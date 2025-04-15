part of 'package:com_buzzedtop/main.dart';

class ContentProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.projects.isEmpty) {
      return Center(
        child: Text('No projects yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.projects.length} projects:'),
        ),
        for (var project in appState.projects)
          ListTile(
            leading: Icon(Icons.label),
            title: Text(project.toString()),
          ),
      ],
    );
  }
}
