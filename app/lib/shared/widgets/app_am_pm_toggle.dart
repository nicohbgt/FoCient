class AppAmPmToggle extends StatelessWidget {
  const AppAmPmToggle({
    super.key,
    required this.isAm,
    required this.onChanged,
  });

  final bool isAm;

  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
          onPressed: () => onChanged(true),
          child: const Text("AM"),
        ),
        FilledButton.tonal(
          onPressed: () => onChanged(false),
          child: const Text("PM"),
        ),
      ],
    );
  }
}
