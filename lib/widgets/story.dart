import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    super.key,
    this.avatar = Icons.face,
    this.username = 'randomuser',
  });

  final IconData avatar;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Colors.purple, width: 4.0),
          ),
          child: Icon(avatar, size: 50.0),
        ),
        Text(username),
      ],
    );
  }
}
