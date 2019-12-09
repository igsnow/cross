import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      children: <Widget>[
        Text('女装', style: TextStyle(fontSize: 12)),
        Text('男装', style: TextStyle(fontSize: 12)),
        Text('服饰配件', style: TextStyle(fontSize: 12)),
        Text('居家', style: TextStyle(fontSize: 12)),
        Text('数码电脑', style: TextStyle(fontSize: 12)),
        Text('洗护', style: TextStyle(fontSize: 12)),
        Text('童婴', style: TextStyle(fontSize: 12)),
        Text('百货', style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
