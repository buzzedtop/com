class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: const EdgeInsets.all(8.0),
      child: DefaultTextStyle(
        style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(CompanyLogos.buzzedtop, size: 48.0, color: Theme.of(context).colorScheme.onSecondary),
            const Text('Buzzed Top, LLC'),
          ],
        ),
      ),
    );
  }
}
