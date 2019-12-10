import 'dart:async';

import 'package:cross/model/category_model.dart';

///获取类目
class CategoryDao {
  static Future<CategoryList> fetch() async {
    List<dynamic> list = [
      {"icon": 'images/female.png', "title": "女装"},
      {"icon": 'images/male.png', "title": "男装"},
      {"icon": 'images/shoes.png', "title": "服饰配件"},
      {"icon": 'images/home.png', "title": "居家"},
      {"icon": 'images/electric.png', "title": "数码电器"},
      {"icon": 'images/care.png', "title": "洗护"},
      {"icon": 'images/baby.png', "title": "童婴"},
      {"icon": 'images/necessity.png', "title": "百货"},
    ];

    CategoryList categoryList = CategoryList.fromJson(list);
    categoryList.categoryList
        .forEach((item) => print('title is ${item.title}'));
    return categoryList;
  }
}
