import 'package:cross/model/category_model.dart';
import 'package:flutter/material.dart';

class CategoryNav extends StatelessWidget {
  final List<CategoryModel> categoryNavList;

  const CategoryNav({Key key, @required this.categoryNavList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
//      height: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: _items(context),
      ),
    );
  }

  _items(BuildContext context) {
    if (categoryNavList == null) return null;
    List<Widget> items = [];
    categoryNavList.forEach((model) {
      items.add(_item(context, model));
    });
    // 计算出第一个行显示的数量
    int separate = (categoryNavList.length / 2 + 0.5).toInt();
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.sublist(0, separate),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items.sublist(separate, categoryNavList.length),
          ),
        )
      ],
    );
  }

  Widget _item(BuildContext context, CategoryModel model) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {

        },
        child: Column(
          children: <Widget>[
            Image.asset(model.icon, width: 32, height: 32),
            Text(
              model.title,
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
