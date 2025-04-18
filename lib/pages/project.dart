part of 'package:com_buzzedtop/main.dart';

class ContentProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var projects = <String>[
    "Step Knight",
    "Worship.direct",
    "Open-Source SpaceScape gh.buzzedtop.com/spacescape/",
    "Open-Source Darkness Dungeon gh.buzzedtop.com/darkness_dungeon",
    "Open-Source Minesweeper gh.buzzedtop.com/minesweeper/"
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
