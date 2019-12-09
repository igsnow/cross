import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  SecondPageState createState() => new SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new AppBar(
          title: new Text('page2'),
        ),
      ),
      body: new Center(
        child: new Text('page2 content'),
      ),
    );
  }
}
