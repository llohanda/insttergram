import 'package:flutter/material.dart';
import 'package:insttergram/routes/home.dart';

const topIconSize = 30.0;
const currentUser = 'my.account';
int notifCount = 3;
int dmCount = 2;
bool badgeSettings = true;
bool badgeProfile = true;
String log = ' Insttergram log: ';

void main() {
  runApp(const MyApp());
}

void logger(String routeName) {
  final time = DateTime.now();
  final formattedTime =
      '[${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')}.${time.millisecond.toString().padLeft(3, '0')}]';
  log += '\n$formattedTime $routeName was clicked!';
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
          onPrimary: Colors.grey[200]!,
          secondary: Colors.white,
          onSecondary: Colors.grey[600]!,
          error: Colors.red,
          onError: Colors.white,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
      ),
      home: const HomeRoute(),
    );
  }
}
