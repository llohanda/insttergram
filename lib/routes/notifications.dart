import 'package:flutter/material.dart';
import 'package:insttergram/widgets/bottom_bar.dart';

class NotifRoute extends StatelessWidget {
  const NotifRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 12.0, 0.0, 12.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Today',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          FollowNotif(
            avatar: Icons.face_2,
            username: 'user_one',
            readableTime: '9h',
          ),
          FollowNotif(
            avatar: Icons.face_3,
            username: 'user_two',
            readableTime: '11h',
          ),
          FollowNotif(
            avatar: Icons.face_4,
            username: 'user_three',
            readableTime: '14h',
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Yesterday',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          FollowNotif(
            avatar: Icons.face_2,
            username: 'user_four',
            readableTime: '1d',
          ),
          FollowNotif(
            avatar: Icons.face_3,
            username: 'user_five',
            readableTime: '1d',
          ),
          FollowNotif(
            avatar: Icons.face_4,
            username: 'user_six',
            readableTime: '1d',
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(selectedIndex: 3),
    );
  }
}

class FollowNotif extends StatelessWidget {
  const FollowNotif({
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
      contentPadding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0),
      leading: Icon(avatar, size: 48.0),
      title: RichText(
        text: TextSpan(
          text: username,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
          children: <TextSpan>[
            TextSpan(
              text: ' started following you. ',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            TextSpan(
              text: readableTime,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
          ],
        ),
      ),
      trailing: Container(
        height: 30.0,
        width: 80.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.blue[700],
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
          'Follow',
          style: Theme.of(context).primaryTextTheme.labelLarge,
        ),
      ),
    );
  }
}
