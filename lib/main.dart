import 'package:flutter/material.dart';
import 'package:flutter_april/widgets/navbar_widget.dart';
import 'package:flutter_april/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

//We need Material App (Stateful widget) to use Material Design
//Scaffold is a basic layout structure
//AppBar is the top bar
//Bottom navigation bar setState

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: WidgetTree(),
    );
  }
}
