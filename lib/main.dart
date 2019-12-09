import 'package:cross/views/firstPage.dart';
import 'package:cross/views/fourthPage.dart';
import 'package:cross/views/secondPage.dart';
import 'package:cross/views/thirdPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Swiper',
      theme: new ThemeData(
        primarySwatch: Colors.orange, // #ff6801
      ),
      home: new MyHomePage(title: 'VCANBUY'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(controller: controller, children: <Widget>[
        new FirstPage(),
        new SecondPage(),
        new ThirdPage(),
        new FourthPage()
      ]),
      bottomNavigationBar: new Material(
        color: Colors.orangeAccent,
        child: new TabBar(controller: controller, tabs: <Tab>[
          new Tab(
            text: '首页',
            icon: new Icon(Icons.home),
          ),
          new Tab(
            text: '搜索',
            icon: new Icon(Icons.search),
          ),
          new Tab(
            text: '购物车',
            icon: new Icon(Icons.add_shopping_cart),
          ),
          new Tab(
            text: '我的',
            icon: new Icon(Icons.person),
          )
        ]),
      ),
    );
  }
}
