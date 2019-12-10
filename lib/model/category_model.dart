/// 类目实体
class CategoryModel {
  String icon;
  String title;

  CategoryModel({this.icon, this.title});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(icon: json['icon'], title: json['title']);
  }
}

class CategoryList {
  List<CategoryModel> categoryList;

  CategoryList({this.categoryList});

  factory CategoryList.fromJson(List<dynamic> listJson) {
    List<CategoryModel> categoryList =
        listJson.map((i) => CategoryModel.fromJson(i)).toList();
    return CategoryList(categoryList: categoryList);
  }
}
