import 'package:com_example/example_1/example_1_page.dart';
import 'package:com_example/example_2/example_2_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.redAccent[700],
            accentColor: Colors.pinkAccent[700],
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Theme.of(context).primaryColor)),
        home: Example2Page());
  }
}
