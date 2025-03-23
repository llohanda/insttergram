import 'dart:math' show Random;

import 'package:flutter/material.dart';
import 'package:insttergram/main.dart';
import 'package:insttergram/routes/new_post.dart';
import 'package:insttergram/routes/settings.dart';
import 'package:insttergram/widgets/bottom_bar.dart';
import 'package:insttergram/widgets/post.dart';
import 'package:insttergram/widgets/story.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        title: Text('Instagram'),
        leading: IconButton(
          onPressed: () => debugPrint('New post clicked!'),
          tooltip: 'Post baru',
          icon: IconButton(
            onPressed:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewPostRoute()),
                ),
            icon: Icon(Icons.add_box_outlined, size: topIconSize),
          ),
        ),
        actions: [
          IconButton(
            onPressed:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsRoute(),
                  ),
                ),
            tooltip: 'Pengaturan',
            icon: Icon(Icons.menu, size: topIconSize),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Badge(
                      label: Text(
                        '+',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      textColor: Theme.of(context).colorScheme.primary,
                      largeSize: 30.0,
                      alignment: Alignment(0.9, 0.15),
                      child: Story(avatar: Icons.face, username: 'Your story'),
                    ),
                    SizedBox(width: 12.0),
                    Story(avatar: Icons.face_2, username: 'user_two'),
                    SizedBox(width: 12.0),
                    Story(avatar: Icons.face_3, username: 'user_three'),
                    SizedBox(width: 12.0),
                    Story(avatar: Icons.face_4, username: 'user_four'),
                  ],
                ),
              ),
              Post(avatar: Icons.face_2, username: 'user_two',),
              Post(avatar: Icons.face_3, username: 'user_three',),
              Post(avatar: Icons.face_4, username: 'user_four',)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: 0,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
