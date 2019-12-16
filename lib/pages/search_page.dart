import 'package:cross/widget/browser.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
            return new Browser(
//              url: "https://www.baidu.com",
              url: "https://www.bilibili.com",
//                  url: "http://m.vcanuby.com",
              title: "vcanbuy",
            );
          }));
        },
        child: Text(
          '搜索',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    ));
  }
}
