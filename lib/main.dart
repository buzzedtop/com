import 'package:com_buzzedtop/features/navigation_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

part 'package:com_buzzedtop/features/header.dart';
part 'package:com_buzzedtop/features/footer.dart';
part 'package:com_buzzedtop/features/posts.dart';

part 'package:com_buzzedtop/pages/home.dart';
part 'package:com_buzzedtop/pages/project.dart';
part 'package:com_buzzedtop/pages/info.dart';
part 'package:com_buzzedtop/pages/contact.dart';

part 'package:com_buzzedtop/assets/logos.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Buzzed Top, LLC',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1E88E5)),
        ),
        home: HomeScreen(),
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

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: NavigationData.navDestinations,
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
                  child: NavigationData.pages[selectedIndex],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}