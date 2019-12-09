import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Swiper ',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Swiper Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        child: new Swiper(
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              "https://res.vcanbuy.com/misc/5d26a43aa209727a3df7cfdc3e51af76.png",
              fit: BoxFit.fill,
            );
          },
          itemCount: 3,
          itemWidth: 350.0,
          itemHeight: 150.0,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
          layout: SwiperLayout.STACK,
          autoplay: true,
        ),
      ),
    );
  }
}
