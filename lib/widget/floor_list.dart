import 'package:flutter/material.dart';

class FloorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
            leading: Image.network(
                "https://avatars3.githubusercontent.com/u/6915570?s=460&v=4"),
            title: Text('我是标题1'),
            subtitle: Text('我是副标题1'),
            trailing: Icon(Icons.chevron_right)),
        ListTile(
            leading: Image.network(
                "https://avatars3.githubusercontent.com/u/6915570?s=460&v=4"),
            title: Text('我是标题2'),
            subtitle: Text('我是副标题2'),
            trailing: Icon(Icons.chevron_right)),
        ListTile(
            leading: Image.network(
                "https://avatars3.githubusercontent.com/u/6915570?s=460&v=4"),
            title: Text('我是标题3'),
            subtitle: Text('我是副标题3'),
            trailing: Icon(Icons.chevron_right)),
      ],
    );
  }
}
