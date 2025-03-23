import 'package:flutter/material.dart';
import 'package:insttergram/main.dart';
import 'package:insttergram/routes/new_post.dart';
import 'package:insttergram/widgets/bottom_bar.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Instagram'),
        leading: IconButton(
          onPressed: () => debugPrint('New post clicked!'),
          tooltip: "Post baru",
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
            onPressed: () => debugPrint('More clicked!'),
            tooltip: "Menu",
            icon: Icon(Icons.menu, size: topIconSize),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: 0,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
