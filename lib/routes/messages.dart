import 'package:flutter/material.dart';
import 'package:insttergram/main.dart';
import 'package:insttergram/widgets/bottom_bar.dart';
import 'package:insttergram/widgets/search_bar.dart';

class DMRoute extends StatelessWidget {
  const DMRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(currentUser, style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: false,
        actions: [Icon(Icons.edit_square, size: topIconSize)],
        actionsPadding: EdgeInsets.only(right: 8.0),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            IGSearchBar(),
            Padding(padding: EdgeInsets.only(top: 4.0)),
            MessageTile(
              avatar: Icons.face_2,
              username: 'user_two',
              readableTime: '16m',
            ),
            MessageTile(
              avatar: Icons.face_3,
              username: 'user_three',
              readableTime: '3h',
            ),
            MessageTile(
              avatar: Icons.face_4,
              username: 'user_four',
              readableTime: '1d',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(selectedIndex: 2),
    );
  }
}

class MessageTile extends StatelessWidget {
  const MessageTile({
    super.key,
    this.avatar = Icons.face,
    this.username = 'randomuser',
    this.readableTime = '2d',
  });

  final IconData avatar;
  final String username;
  final String readableTime;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(avatar, size: 60.0),
      title: Text(username),
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
      subtitle: Text('Sent $readableTime ago'),
      trailing: Icon(Icons.camera_alt_outlined, size: 36.0),
    );
  }
}
