import 'package:flutter/material.dart';

class NewPostRoute extends StatelessWidget {
  const NewPostRoute({super.key});

  static const surface = Colors.black87;
  static const primary = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: surface,
      appBar: AppBar(
        backgroundColor: surface,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.close, color: primary),
        ),
      ),
      body: Center(
        child: Text(
          'You opened the New Post feature!',
          style: TextStyle(color: primary),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Ink(
        decoration: const ShapeDecoration(
          shape: CircleBorder(),
          color: primary,
        ),
        child: IconButton(
          onPressed: () => debugPrint('Photo icon clicked'),
          icon: Icon(Icons.camera_alt),
          iconSize: 60.0,
        ),
      ),
    );
  }
}
