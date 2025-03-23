import 'package:flutter/material.dart';
import 'package:insttergram/main.dart';
import 'package:insttergram/routes/new_post.dart';
import 'package:insttergram/routes/settings.dart';
import 'package:insttergram/widgets/bottom_bar.dart';

class ProfileRoutes extends StatelessWidget {
  const ProfileRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(currentUser, style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              logger('New post');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewPostRoute()),
              );
            },
            icon: Icon(Icons.add_box_outlined, size: topIconSize),
          ),
          Badge(
            isLabelVisible: badgeSettings,
            alignment: Alignment(0.7, -0.7),
            child: IconButton(
              onPressed: () {
                badgeSettings = false;
                logger('Settings');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsRoute(),
                  ),
                );
              },
              tooltip: 'Pengaturan',
              icon: Icon(Icons.menu, size: topIconSize),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            ListTile(
              horizontalTitleGap: 28.0,
              leading: Icon(Icons.account_circle_outlined, size: 100.0),
              titleAlignment: ListTileTitleAlignment.top,
              title: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Text('User One'),
              ),
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
              subtitle: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('0', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('posts'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('6', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('followers'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('6', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('following'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 8.0,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('This is your biography'),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'Edit profile',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
                SizedBox(width: 4.0),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'Share profile',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
                SizedBox(width: 4.0),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.person_add_outlined, size: 20.0),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              child: Icon(Icons.camera_alt_outlined, size: 100.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'No posts yet',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(selectedIndex: 4),
    );
  }
}
