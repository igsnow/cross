import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  final List<String> _list = [
    '夏季新款女装清新格子包臀A字短裙学生高腰显瘦荷叶',
    '春秋季女士雪纺衬衫气质印花衬衣复古港味chic碎花上',
    '帛卡琪2018新款女装黑色套装裙chic吊带裙两件套',
    '女夏2019新款波点设计感印花拼接短袖宽松假两件打底',
    '2019夏款女装阔腿裤女纯色棉麻大码休闲裤显瘦休闲裤',
    '2019夏季冰丝针织开衫女士喇叭袖短款外套百搭空调衫',
    '松紧裤八九分牛仔裤女夏宽松2019新裤子显瘦百搭薄款',
    '阔腿裤女夏垂感七分裤高腰洋气坠感垂直宽松冰丝薄款',
    '衬衫连衣裙春秋新款韩国chic风女装气质中长款白色',
    '大码女装春秋新款两件套装外套显瘦连衣裙胖mm中长'
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
          ),
        ],
      ),
    );
  }
}

// 构建单个Widget
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
              text,
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
            child: Row(
              children: <Widget>[
                Text(
                  '¥ 39.99',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.125,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Text(
                    '¥ 99.99',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
