import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:focient/shared/widgets/feedback/app_dialog.dart';

void main() {
  testWidgets('show renders content and returns an action result',
      (tester) async {
    bool? result;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) => FilledButton(
              onPressed: () async {
                result = await AppDialog.show<bool>(
                  context: context,
                  title: 'Discard changes?',
                  child: const Text('Your edits will be lost.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: const Text('Discard'),
                    ),
                  ],
                );
              },
              child: const Text('Open'),
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();

    expect(find.text('Discard changes?'), findsOneWidget);
    expect(find.text('Your edits will be lost.'), findsOneWidget);

    await tester.tap(find.text('Discard'));
    await tester.pumpAndSettle();

    expect(result, isTrue);
    expect(find.byType(AppDialog), findsNothing);
  });
}
