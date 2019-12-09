import 'package:cross/navigator/tab_navigator.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'APP',
        theme: new ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: TabNavigator());
  }
}
