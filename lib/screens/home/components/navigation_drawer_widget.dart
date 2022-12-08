import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.red,
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 70),
            ListTile(
              textColor: Colors.black,
              iconColor: Colors.black,
              leading: const Icon(Icons.accessibility),
              title: const Text('Sing in'),
              onTap: () {},
            ),
            ListTile(
              textColor: Colors.black,
              iconColor: Colors.black,
              leading: const Icon(Icons.account_box),
              title: const Text('Your Profile'),
              onTap: () {},
            ),
            ListTile(
              textColor: Colors.black,
              iconColor: Colors.black,
              leading: const Icon(Icons.add_location),
              title: const Text('About Us'),
              onTap: () {},
            ),
            ListTile(
              textColor: Colors.black,
              iconColor: Colors.black,
              leading: const Icon(Icons.app_settings_alt_rounded),
              title: const Text('Support'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
