import 'package:flutter/material.dart';
import 'package:flutter_april/views/widgets/navbar_widget.dart';
import 'package:flutter_april/views/pages/home_page.dart';
import 'package:flutter_april/views/pages/profile_page.dart';
import 'package:flutter_april/views/pages/search_page.dart';
import 'package:flutter_april/views/pages/settings_page.dart';
// This is a widget tree that will be used in the main.dart file
// It will be used to create the main structure of the app

List<Widget> pages = [HomePage(), ProfilePage(), SearchPage(), SettingsPage()];
// This is a list of pages that will be used in the bottom navigation bar

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter April-test')),
      body: pages.elementAt(0),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
