import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  @override
  FourthPageState createState() => new FourthPageState();
}

class FourthPageState extends State<FourthPage> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new AppBar(
          title: new Text('page4'),
        ),
      ),
      body: new Center(
        child: new Text('page4 content'),
      ),
    );
  }
}
