import 'package:flutter/material.dart';
import 'package:flutter_april/data/notifiers.dart';
import 'package:flutter_april/views/widgets/navbar_widget.dart';
import 'package:flutter_april/views/pages/home_page.dart';
import 'package:flutter_april/views/pages/profile_page.dart';
import 'package:flutter_april/views/pages/search_page.dart';
import 'package:flutter_april/views/pages/settings_page.dart';
import 'package:flutter_april/views/pages/welcome_page.dart';

// This is a widget tree that will be used in the main.dart file
// It will be used to create the main structure of the app

List<Widget> pages = [HomePage(), ProfilePage(), SearchPage(), SettingsPage()];
// This is a list of pages that will be used in the bottom navigation bar

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter April-test'),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
              // This will toggle the dark mode
              // and light mode
              // and set the value of isDarkModeNotifier to the opposite of its current value
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
