import 'package:flutter/material.dart';

class FloorList extends StatelessWidget {
  final List data = new List();

  FloorList() {
    for (int i = 0; i < 8; i++) {
      data.add({
        "title": "เสื้อผ้าผู้หญิง",
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/${index + 1}.png"),
                        fit: BoxFit.cover),
                  ),
                  height: 40,
                  margin: EdgeInsets.fromLTRB(6, 0, 6, 0),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '${_data['title']}',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                        Text(
                          'ดูเพิ่มเติม>',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        ),
                      ],
                    ),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image.network(
                              "https://cdn.v2ex.com/avatar/d247/b1ac/145384_normal.png?m=1476168993",
                              width: 108,
                              height: 108,
                              fit: BoxFit.cover,
                            ),
                            Text('冬季新款女装'),
                            Text('99.99')
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Image.network(
                              "https://cdn.v2ex.com/avatar/d247/b1ac/145384_normal.png?m=1476168993",
                              width: 108,
                              height: 108,
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
                              width: 108,
                              height: 108,
                              fit: BoxFit.cover,
                            ),
                            Text('冬季新款男装'),
                            Text('99.99')
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => Divider(
              color: Colors.grey,
            ),
        itemCount: this.data.length);
  }
}
