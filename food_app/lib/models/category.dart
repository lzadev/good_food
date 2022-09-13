import 'package:food_app/utils/constants.dart';

class Category {
  Category({
    required this.id,
    required this.name,
    required this.isActive,
    this.imagePath,
    required this.v,
  });

  String id;
  String name;
  bool isActive;
  String? imagePath;
  int v;

  get fullImagePath {
    if (imagePath != null) {
      final tempPath = imagePath!.replaceAll(r'\', r'/');
      // return Uri.https(baseUrl, tempPath);
      return "https://forfoodapp.herokuapp.com/$tempPath";
    }
  }

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["_id"],
        name: json["name"],
        isActive: json["isActive"],
        imagePath: json["imagePath"],
        v: json["__v"],
      );
}
