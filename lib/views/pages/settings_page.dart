import 'package:flutter/material.dart';
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
