import 'package:flutter/material.dart';
import 'package:insttergram/main.dart';
import 'package:insttergram/widgets/search_bar.dart';

class SettingsRoute extends StatelessWidget {
  const SettingsRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.chevron_left, size: topIconSize),
        ),
        title: Text(
          'Settings & Activity',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            IGSearchBar(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 12.0, 0.0, 4.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ),
            ),
            SettingsTile(
              leading: Icons.account_circle_outlined,
              title: 'Accounts Center',
              subtitle: 'Password, security, personal details, ad preference',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Manage your connected experiences and account settings across Meta technologies.',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Container(height: 4.0, color: Colors.grey[200]),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 12.0, 0.0, 4.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'How you use Instagram',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ),
            ),
            SettingsTile(leading: Icons.bookmark_outline, title: 'Saved'),
            SettingsTile(leading: Icons.history, title: 'Archive'),
            SettingsTile(
              leading: Icons.monitor_heart_outlined,
              title: 'Your activity',
            ),
            SettingsTile(
              leading: Icons.notifications_outlined,
              title: 'Notifications',
            ),
            SettingsTile(leading: Icons.schedule, title: 'Time Management'),
          ],
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    required this.leading,
    required this.title,
    this.subtitle,
  });

  final IconData leading;
  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final Widget? subtitleWidget = subtitle != null ? Text(subtitle!) : null;

    return ListTile(
      leading: Icon(leading, size: topIconSize),
      titleAlignment: ListTileTitleAlignment.titleHeight,
      title: Text(title),
      titleTextStyle: Theme.of(context).textTheme.bodyLarge,
      subtitle: subtitleWidget,
      trailing: Icon(Icons.chevron_right),
    );
  }
}
