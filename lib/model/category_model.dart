/**
 * @首页类目的实体
 * @icon
 * @title
 */
class Category {
  String icon;
  String title;

  Category({this.icon, this.title});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(icon: json['icon'], title: json['title']);
  }
}

class CategoryList {
  List<Category> categoryList;

  CategoryList({this.categoryList});

  factory CategoryList.fromJson(List<dynamic> listJson) {
    List<Category> categoryList =
        listJson.map((value) => Category.fromJson(value)).toList();
    return CategoryList(categoryList: categoryList);
  }
}
