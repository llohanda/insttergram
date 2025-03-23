import 'package:flutter/material.dart';
import 'package:insttergram/routes/home.dart';
import 'package:insttergram/routes/search.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key, required this.selectedIndex});
  int selectedIndex = 0;

  static const bottomIconSize = 36.0;
  static const bottomDestinations = <NavigationDestination>[
    NavigationDestination(
      icon: Icon(Icons.home_outlined, size: bottomIconSize),
      label: 'Home',
    ),
    NavigationDestination(
      icon: Icon(Icons.search, size: bottomIconSize),
      label: 'Explore',
    ),
    NavigationDestination(
      icon: Icon(Icons.messenger_outline_rounded, size: bottomIconSize),
      label: 'Direct Message',
    ),
    NavigationDestination(
      icon: Icon(Icons.favorite_border, size: bottomIconSize),
      label: 'Notifications',
    ),
    NavigationDestination(
      icon: Icon(Icons.account_circle_outlined, size: bottomIconSize),
      label: 'Profile',
    ),
  ];

  final routes = <Widget>[
    const HomeRoute(),
    const SearchRoute(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(top: BorderSide(color: Colors.grey[400]!, width: 1.0)),
      ),
      child: NavigationBar(
        height: 50.0,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          debugPrint('${bottomDestinations[value].label} was clicked!');
          selectedIndex = value;
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => routes[value]),
          );
        },
        destinations: bottomDestinations,
      ),
    );
  }
}
