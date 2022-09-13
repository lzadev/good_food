import 'dart:convert';

import 'package:food_app/models/category.dart';

class CategoryResponse {
  CategoryResponse({
    required this.success,
    required this.data,
    this.message,
    this.errorMessage,
    required this.requestDate,
  });

  bool success;
  List<Category> data;
  dynamic message;
  dynamic errorMessage;
  DateTime requestDate;

  factory CategoryResponse.fromJson(String str) =>
      CategoryResponse.fromMap(json.decode(str));

  factory CategoryResponse.fromMap(Map<String, dynamic> json) =>
      CategoryResponse(
        success: json["success"],
        data:
            List<Category>.from(json["data"].map((x) => Category.fromJson(x))),
        message: json["message"],
        errorMessage: json["errorMessage"],
        requestDate: DateTime.parse(json["requestDate"]),
      );
}
