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
    /// 楼层每张图片的宽度
    final imgWidth = (MediaQuery.of(context).size.width - 50) / 3;

    return ListView.separated(
        shrinkWrap: true,
        // 嵌套ListView参数
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          var _data = this.data[index];
          return Container(
            margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
            child: Column(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/${index + 1}.png"),
                          fit: BoxFit.cover),
                    ),
                    height: 40,
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
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Image.network(
                            "https://cdn.v2ex.com/avatar/d247/b1ac/145384_normal.png?m=1476168993",
                            width: imgWidth,
                            height: imgWidth,
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
                            width: imgWidth,
                            height: imgWidth,
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
                            width: imgWidth,
                            height: imgWidth,
                            fit: BoxFit.cover,
                          ),
                          Text('冬季新款男装'),
                          Text('99.99')
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
              color: Colors.grey[300],
            ),
        itemCount: this.data.length);
  }
}
