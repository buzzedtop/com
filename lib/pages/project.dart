part of 'package:com_buzzedtop/main.dart';

class ContentProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var projects = <String>[
    "Step Knight",
    "Worship Me",
    "Project 3",
  ];

    if (projects.isEmpty) {
      return Center(
        child: Text('No projects yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${projects.length} projects:'),
        ),
        for (var project in projects)
          ListTile(
            leading: Icon(Icons.label),
            title: Text(project.toString()),
          ),
      ],
    );
  }
}
