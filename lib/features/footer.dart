part of 'package:com_buzzedtop/main.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      padding: const EdgeInsets.all(8.0),
      child: DefaultTextStyle(
        style: TextStyle(color: Theme.of(context).colorScheme.onSecondary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        const Text('Buzzed Top, LLC'),
        const Text('buzzedtop.com'),
        const Text('CAGE: 9UMC6'),
          ],
        ),
      ),
    );
  }
}