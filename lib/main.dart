import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const bottomIconSize = 36.0;
  static const topIconSize = 30.0;
  int selectedIndex = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(widget.title),
        leading: IconButton(
          onPressed: () => debugPrint('New post clicked!'),
          tooltip: "Post baru",
          icon: Icon(Icons.add_box_outlined, size: topIconSize),
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
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
            setState(() {
              selectedIndex = value;
            });
          },
          destinations: bottomDestinations,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
