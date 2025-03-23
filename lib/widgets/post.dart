import 'dart:math' show Random;
import 'package:flutter/material.dart';
import 'package:insttergram/main.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    this.avatar = Icons.face,
    this.username = 'randomuser',
  });

  final IconData avatar;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(avatar),
          title: Text(username),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
          trailing: Icon(Icons.more_horiz),
        ),
        Container(
          height: 300,
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text(
            'Mohon salin caption post ini dalam survei setelah selesai menguji coba prototipe.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          children: [
            SizedBox(width: 8.0),
            Icon(Icons.favorite_border, size: 32),
            SizedBox(width: 12.0),
            Icon(Icons.chat_bubble_outline, size: 32),
            SizedBox(width: 12.0),
            Icon(Icons.share, size: 32),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.bookmark_outline, size: 32),
              ),
            ),
            SizedBox(width: 8.0),
          ],
        ),
        SizedBox(height: 8.0),
        Align(
          alignment: Alignment.centerLeft,
          child: SelectableText.rich(
            TextSpan(
              text: username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
              children: [
                TextSpan(
                  text: log,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8.0),
      ],
    );
  }
}
