import 'dart:convert';

import 'package:cross/dao/home_dao.dart';
import 'package:cross/model/common_model.dart';
import 'package:cross/model/home_model.dart';
import 'package:cross/widget/local_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _title = 'VCANBUY';
  List _imageUrls = [
    "https://res.vcanbuy.com/misc/f361abfe833db5182d00e300dcb66d4d.png",
    "https://res.vcanbuy.com/misc/5d26a43aa209727a3df7cfdc3e51af76.png",
    "https://res.vcanbuy.com/misc/f3000f9bfba6380a0d5a81bf16e7c529.jpg",
    "https://res.vcanbuy.com/misc/23577d6f32f0452c30187b81a373a96a.png",
    "https://res.vcanbuy.com/misc/a8148c6ae18b462e435b59fc6304ecc6.png",
    "https://res.vcanbuy.com/misc/026186167669110016a8686a69b1de7d.jpg"
  ];
  List<CommonModel> localNavList = [];

  @override
  void initState() {
    super.initState();
    _handleRefresh();
  }

  Future<Null> _handleRefresh() async {
    try {
      HomeModel model = await HomeDao.fetch();
      setState(() {
        localNavList = model.localNavList;
      });
    } catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              _title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Container(
              height: 160,
              child: Swiper(
                itemCount: _imageUrls.length,
                autoplay: true,
                itemBuilder: (BuildContext content, int index) {
                  return Image.network(
                    _imageUrls[index],
                    fit: BoxFit.fill,
                  );
                },
                pagination: SwiperPagination(),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(7, 4, 7, 4),
              child: LocalNav(
                localNavList: localNavList,
              ),
            )
          ],
        )));
  }
}
