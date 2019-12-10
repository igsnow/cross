import 'package:flutter/material.dart';

class FloorList extends StatelessWidget {
  List data = new List();

  FloorList() {
    for (int i = 1; i < 10; i++) {
      data.add({
        "title": "我是标题$i",
        "subTitle": "我是副标题$i",
        "imgUrl": "https://avatars3.githubusercontent.com/u/6915570?s=460&v=4"
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true, // 嵌套ListView参数
        itemBuilder: (context, index) {
          var _data = this.data[index];
          return ListTile(
            leading: Image.network(_data['imgUrl']),
            title: Text(_data['title']),
            subtitle: Text(_data['subTitle']),
            trailing: Icon(Icons.chevron_right),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: this.data.length);
  }
}
