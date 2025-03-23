import 'package:flutter/material.dart';
import 'package:insttergram/routes/home.dart';

const topIconSize = 30.0;
const currentUser = 'my.account';

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
