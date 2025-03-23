import 'package:flutter/material.dart';
import 'package:insttergram/routes/home.dart';
import 'package:insttergram/routes/messages.dart';
import 'package:insttergram/routes/notifications.dart';
import 'package:insttergram/routes/profile.dart';
import 'package:insttergram/routes/search.dart';

class BottomBar extends StatelessWidget {
  BottomBar({super.key, required this.selectedIndex});

  final int selectedIndex;
  static const bottomIconSize = 36.0;
  static const bottomDestinations = <NavigationDestination>[
    NavigationDestination(
      icon: Icon(Icons.home_outlined, size: bottomIconSize),
      label: 'Home',
      tooltip: 'Laman awal',
    ),
    NavigationDestination(
      icon: Icon(Icons.search, size: bottomIconSize),
      label: 'Explore',
      tooltip: 'Pencarian',
    ),
    NavigationDestination(
      icon: Icon(Icons.messenger_outline_rounded, size: bottomIconSize),
      label: 'Direct Message',
      tooltip: 'Pesan',
    ),
    NavigationDestination(
      icon: Icon(Icons.favorite_border, size: bottomIconSize),
      label: 'Notifications',
      tooltip: 'Notifikasi',
    ),
    NavigationDestination(
      icon: Icon(Icons.account_circle_outlined, size: bottomIconSize),
      label: 'Profile',
      tooltip: 'Profil',
    ),
  ];

  final routes = <Widget>[
    const HomeRoute(),
    const SearchRoute(),
    const DMRoute(),
    const NotifRoute(),
    const ProfileRoutes(),
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
          if (value != selectedIndex) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => routes[value]),
            );
          }
        },
        destinations: bottomDestinations,
      ),
    );
  }
}
