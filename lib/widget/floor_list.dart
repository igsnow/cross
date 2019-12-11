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
          return Column(
            children: <Widget>[
              Container(
                child: ListTile(
//                  leading: Image.network(_data['imgUrl']),
                  title: Text(_data['title']),
//                  subtitle: Text(_data['subTitle']),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Image.network(
                            "https://cdn.v2ex.com/avatar/d247/b1ac/145384_normal.png?m=1476168993",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text('冬季新款男装'),
                          Text('99.99')
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Image.network(
                            "https://cdn.v2ex.com/avatar/d247/b1ac/145384_normal.png?m=1476168993",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text('冬季新款男装'),
                          Text('99.99')
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Image.network(
                            "https://cdn.v2ex.com/avatar/d247/b1ac/145384_normal.png?m=1476168993",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text('冬季新款男装'),
                          Text('99.99')
                        ],
                      ),
                    ],
                  ))
            ],
          );
        },
        separatorBuilder: (context, index) => Divider(
              color: Colors.grey,
            ),
        itemCount: this.data.length);
  }
}
