import 'dart:math' show Random;
import 'package:flutter/material.dart';

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
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
          trailing: Icon(Icons.more_horiz),
        ),
        Container(
          height: 300,
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
        ),
        SizedBox(height: 8.0,),
        Row(
          children: [
            SizedBox(width: 8.0),
            Icon(Icons.favorite_border, size: 32,),
            SizedBox(width: 12.0),
            Icon(Icons.chat_bubble_outline, size: 32,),
            SizedBox(width: 12.0),
            Icon(Icons.share, size: 32,),
            Expanded(child: 
            Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.bookmark_outline, size: 32,))),
            SizedBox(width: 8.0),
          ],
        ),
        SizedBox(height: 8.0,)
      ],
    );
  }
}
