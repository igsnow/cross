import 'dart:async';

import 'package:cross/model/category_model.dart';

///获取类目
class CategoryDao {
  static Future<CategoryList> fetch() async {
    List<dynamic> list = [
      {"icon": '', "title": "Jack"},
      {"icon": '', "title": "Rose"},
      {"icon": '', "title": "Karl"}
    ];

    CategoryList categoryList = CategoryList.fromJson(list);
    categoryList.categoryList
        .forEach((item) => print('title is ${item.title}'));
    return categoryList;
  }
}
