import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:focient/shared/widgets/feedback/app_bottom_sheet.dart';
import 'package:focient/app/theme/app_spacing.dart';

void main() {
  Widget buildSubject(Widget child) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(body: child),
    );
  }

  testWidgets('renders its heading, content, and drag handle', (tester) async {
    await tester.pumpWidget(
      buildSubject(
        const AppBottomSheet(
          title: 'Plan your focus',
          subtitle: 'Choose a duration for this session.',
          child: Text('Sheet content'),
        ),
      ),
    );

    expect(find.text('Plan your focus'), findsOneWidget);
    expect(find.text('Choose a duration for this session.'), findsOneWidget);
    expect(find.text('Sheet content'), findsOneWidget);
    expect(find.byType(AppBottomSheet), findsOneWidget);

    final handle = tester.widget<Container>(
      find.byType(Container).first,
    );
    expect(handle.constraints?.maxWidth, AppSpacing.s48);
    expect(handle.constraints?.maxHeight, AppSpacing.s4);
  });

  testWidgets('can hide the drag handle', (tester) async {
    await tester.pumpWidget(
      buildSubject(
        const AppBottomSheet(
          showDragHandle: false,
          child: Text('Sheet content'),
        ),
      ),
    );

    expect(find.byType(Container), findsNothing);
    expect(find.text('Sheet content'), findsOneWidget);
  });

  testWidgets('show returns the value used to close the sheet', (tester) async {
    String? result;

    await tester.pumpWidget(
      buildSubject(
        Builder(
          builder: (context) => FilledButton(
            onPressed: () async {
              result = await AppBottomSheet.show<String>(
                context: context,
                title: 'Actions',
                child: Builder(
                  builder: (sheetContext) => TextButton(
                    onPressed: () => Navigator.pop(sheetContext, 'confirmed'),
                    child: const Text('Confirm'),
                  ),
                ),
              );
            },
            child: const Text('Open'),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(find.text('Actions'), findsOneWidget);

    await tester.tap(find.text('Confirm'));
    await tester.pumpAndSettle();

    expect(result, 'confirmed');
    expect(find.byType(AppBottomSheet), findsNothing);
  });
}
