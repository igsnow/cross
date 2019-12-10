class CommonModel {
  final String icon;
  final String title;

  CommonModel({this.icon, this.title});

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      icon: json['icon'],
      title: json['title'],
    );
  }
}
