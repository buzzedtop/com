part of 'package:com_buzzedtop/main.dart';

class ContentContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.mail, color: Theme.of(context).colorScheme.primary),
          SizedBox(width: 8),
          GestureDetector(
            onTap: () async {
              // Open mailto link
              final Uri emailUri = Uri(
                scheme: 'mailto',
                path: 'taylor@buzzedtop.com',
              );
              if (await canLaunchUrl(emailUri)) {
                await launchUrl(emailUri, mode: LaunchMode.externalApplication);
              } else {
                throw 'Could not launch $emailUri';
              }
            },
            child: Text(
              'taylor@buzzedtop.com',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}