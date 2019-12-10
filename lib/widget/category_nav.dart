import 'package:cross/model/category_model.dart';
import 'package:flutter/material.dart';

class CategoryNav extends StatelessWidget {
  final List<CategoryModel> categoryNavList;

  const CategoryNav({Key key, @required this.categoryNavList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Padding(
        padding: EdgeInsets.all(7),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items,
    );
  }

  Widget _item(BuildContext context, CategoryModel model) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Image.asset(model.icon, width: 32, height: 32),
          Text(
            model.title,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
