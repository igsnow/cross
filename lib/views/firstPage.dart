import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class FirstPage extends StatefulWidget {
  final String title = 'VCANBUY';

  List<String> imgs = [
    "https://res.vcanbuy.com/misc/f361abfe833db5182d00e300dcb66d4d.png",
    "https://res.vcanbuy.com/misc/5d26a43aa209727a3df7cfdc3e51af76.png",
    "https://res.vcanbuy.com/misc/f3000f9bfba6380a0d5a81bf16e7c529.jpg",
    "https://res.vcanbuy.com/misc/23577d6f32f0452c30187b81a373a96a.png",
    "https://res.vcanbuy.com/misc/a8148c6ae18b462e435b59fc6304ecc6.png",
    "https://res.vcanbuy.com/misc/026186167669110016a8686a69b1de7d.jpg"
  ];

  @override
  FirstPageState createState() => new FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: Center(
            child: Text(
              widget.title,
              style: new TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: new Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160.0,
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    widget.imgs[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 6,
//          itemWidth: 350.0,
//          itemHeight: 150.0,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
//          layout: SwiperLayout.STACK,
                autoplay: true,
              ),
            ),
          ],
        ));
  }
}
