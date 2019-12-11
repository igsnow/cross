import 'package:flutter/material.dart';

class FloorList extends StatelessWidget {
  final List data = new List();

  FloorList() {
    for (int i = 1; i < 10; i++) {
      data.add({
        "title": "我是标题$i",
        "subTitle": "我是副标题$i",
        "imgUrl":
        "https://cdn.v2ex.com/avatar/ed66/d1b9/439497_normal.png?m=1567609342"
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        // 嵌套ListView参数
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          var _data = this.data[index];
          return ListTile(
            leading: Image.network(_data['imgUrl']),
            title: Text(_data['title']),
            subtitle: Text(_data['subTitle']),
            trailing: Icon(Icons.chevron_right),
          );
        },
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
        ),
        itemCount: this.data.length);
  }
}
