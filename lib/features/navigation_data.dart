import 'package:com_buzzedtop/main.dart';
import 'package:flutter/material.dart';

class NavigationData {
  static final List<Widget> pages = [
    ContentHomepage(),
    ContentProjectPage(),
    ContentInfoPage(),
    ContentContactPage(),
  ];

  static final List<NavigationRailDestination> navDestinations = [
    NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
    NavigationRailDestination(icon: Icon(Icons.source), label: Text('Projects')),
    NavigationRailDestination(icon: Icon(Icons.info), label: Text('Info')),
    NavigationRailDestination(icon: Icon(Icons.mail), label: Text('Contact Us')),
  ];
}