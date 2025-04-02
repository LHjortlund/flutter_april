import 'package:flutter/material.dart';
import 'package:flutter_april/widgets/navbar_widget.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter April-test')),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
