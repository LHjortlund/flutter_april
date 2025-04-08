import 'package:flutter/material.dart';
import 'package:flutter_april/data/notifiers.dart';
import 'package:flutter_april/views/pages/welcome_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Logout'),
            onTap: () {
              selectedPageNotifier.value = 0;
              // Clear the user data and navigate to the welcome page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const WelcomePage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
