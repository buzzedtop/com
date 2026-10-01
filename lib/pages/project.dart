part of 'package:com_buzzedtop/main.dart';

class ContentProjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var projects = <Map<String, String>>[
      {
        "title": "Worship.direct",
        "description": "Work in Progress: A modern platform currently in active development. Visit https://worship.direct",
        "url": "https://worship.direct"
      },
      {
        "title": "Manifest - Ghost Palette",
        "description": "A PWA ToDo Tracker and productivity application.",
        "url": "https://github.com/gleatd01/Manifest---Ghost-Palette"
      },
      {
        "title": "Step Knight",
        "description": "A mobile game application.",
        "url": ""
      },
      {
        "title": "Open-Source SpaceScape",
        "description": "gh.buzzedtop.com/spacescape/",
        "url": "https://gh.buzzedtop.com/spacescape/"
      },
      {
        "title": "Open-Source Darkness Dungeon",
        "description": "gh.buzzedtop.com/darkness_dungeon",
        "url": "https://gh.buzzedtop.com/darkness_dungeon"
      },
      {
        "title": "Open-Source Minesweeper",
        "description": "gh.buzzedtop.com/minesweeper/",
        "url": "https://gh.buzzedtop.com/minesweeper/"
      }
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
          child: Text(
            'Highlighted Projects & Works in Progress',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        for (var project in projects)
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.rocket_launch, color: Theme.of(context).colorScheme.primary),
              title: Text(project["title"]!, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(project["description"]!),
              onTap: project["url"]!.isNotEmpty
                  ? () async {
                      final url = Uri.parse(project["url"]!);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    }
                  : null,
              trailing: project["url"]!.isNotEmpty ? Icon(Icons.open_in_new, size: 16) : null,
            ),
          ),
      ],
    );
  }
}
