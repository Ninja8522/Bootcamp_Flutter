import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  AppBar _appBar() {
    return AppBar(title: Text("Example 1"));
  }

  Widget _body() {
    return Container(
        child: Center(
            child: Text("Hello World!!",
                style: TextStyle(fontSize: 30, color: Colors.indigo))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _appBar(), body: _body());
  }
}
