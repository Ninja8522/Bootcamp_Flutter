import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExcercisePage extends StatefulWidget {
  @override
  _ExcercisePageState createState() => _ExcercisePageState();
}

class _ExcercisePageState extends State<ExcercisePage> {
  int _number = 0;
  // ignore: non_constant_identifier_names
  bool _even_or_odd = true;

  AppBar _appBar() {
    return AppBar(title: Text("Excercise 1"));
  }

  Widget _body() {
    return Container(
        child: Center(
            child: Text(
      "Number: $_number",
      style: _even_or_odd
          ? TextStyle(fontSize: 30, color: Colors.blue)
          : TextStyle(fontSize: 30, color: Colors.red),
    )));
  }

  Widget _fabIncrement() {
    return FloatingActionButton.extended(
        onPressed: _incrementNumber,
        label: Text("Increment"),
        icon: Icon(Icons.exposure_plus_1));
  }

  Widget _fabDecrement() {
    return FloatingActionButton.extended(
        onPressed: _decrementNumber,
        label: Text("Decrement"),
        icon: Icon(Icons.exposure_minus_1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_fabIncrement(), SizedBox(height: 15), _fabDecrement()]),
    );
  }

  void _incrementNumber() {
    _number++;
    if (_number % 2 == 0) {
      _even_or_odd = true;
    } else {
      _even_or_odd = false;
    }
    setState(() {});
  }

  void _decrementNumber() {
    _number--;
    if (_number % 2 == 0) {
      _even_or_odd = true;
    } else {
      _even_or_odd = false;
    }
    setState(() {});
  }
}
