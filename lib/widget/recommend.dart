import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  final List<String> _list = [
    '盗墓笔记',
    '鬼吹灯',
    '这个书名是凑的',
    '藏海花',
    '这个书名是凑的',
    '藏海花',
    '沙海',
    '藏海花',
    '这个书名是凑的',
    '藏海花'
  ];

  List<Widget> _generateList() {
    return _list.map((item) => GoodsItem(text: item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: screenWidth,
            margin: EdgeInsets.only(bottom: 10),
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                '好货推荐',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 2.2,
                ),
              ),
            ),
          ),
          Wrap(
            children: _generateList(),
            spacing: 5,
//            runSpacing: 1,
//            alignment: WrapAlignment.start,
//            runAlignment: WrapAlignment.end,
          ),
        ],
      ),
    );
  }
}

// 构建单个标签
class GoodsItem extends StatelessWidget {
  GoodsItem({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final double imgWidth = (MediaQuery.of(context).size.width - 25) / 2;
    return Column(
      children: <Widget>[
        Image.network(
          "https://cdn.v2ex.com/avatar/24e7/8ed6/439973_normal.png?m=1572918030",
          width: imgWidth,
          height: imgWidth,
          fit: BoxFit.cover,
        ),
        Container(
          width: imgWidth,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 7, 5, 0),
            child: Text(
              '春秋季新款男装复古纯色男式衬衫休闲款',
              textAlign: TextAlign.left, // 该属性得设置宽度下才会生效
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.42,
              ),
            ),
          ),
        ),
        Container(
          width: imgWidth,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
            child: Text(
              '¥ 39.99',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.125,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
