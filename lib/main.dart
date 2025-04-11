import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/widgets.dart';
import 'arc/header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Buzzed Top, LLC',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(30, 144, 255, 1)),
        ),
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(child: MyHomePage()),
          Footer(),
        ],
      ),
    );
  }
}

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

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];
  var projects = <String>[
    "Step Knight",
    "Worship Me",
    "Project 3",
  ];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = ContentHomepage();
        break;
      case 1:
        page = ContentProjectPage();
        break;
      case 2:
        page = ContentInfoPage();
        break;
      case 3:
        page = ContentContactPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.source),
                      label: Text('Projects'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.info),
                      label: Text('Info'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.mail),
                      label: Text('Contact Us'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}

class ContentHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                'Website Relaunch',
                style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 8),
                Text(
                'This is to mark the relaunch of the website are being rewritten in flutter, as all primary development is transitioning to flutter for our projects. This is to maintain multi-platform distribution to pruducts. The star doesn\'t work yet.',
                style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 16),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Author: Taylor @ Buzzed Top - 2025-04-08',
                  style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Row(
                  children: [
                    IconButton(
                    icon: Icon(Icons.star),
                    color: Colors.amber,
                    onPressed: () {
                      // Increment star count logic
                    },
                    ),
                    Text(
                    '0', // Replace with the actual star count
                    style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                  ),
                ],
                ),
              ],
              ),
            ),
            ),
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: "${pair.first} ${pair.second}",
        ),
      ),
    );
  }
}

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

class ContentInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('New software development company.'),
    );
  }
}

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

class CompanyLogos {
  CompanyLogos._();

  static const _kFontFam = 'CompanyLogos';
  static const String? _kFontPkg = null;

  static const IconData buzzedtop = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
