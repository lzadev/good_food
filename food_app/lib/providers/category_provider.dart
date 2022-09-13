import 'package:food_app/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/categories_response.dart';

import '../models/category.dart';

class CategoryProvider extends ChangeNotifier {
  final String _baseUrl = baseUrl;

  List<Category> categories = [];

  CategoryProvider() {
    getCategories();
  }

  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(_baseUrl, endpoint);
    final reponse = await http.get(url);
    return reponse.body;
  }

  Future<List<Category>> getCategories() async {
    final jsonData = await _getJsonData("api/categories");

    final categoriesResponse = CategoryResponse.fromJson(jsonData);
    categories = categoriesResponse.data;
    notifyListeners();

    return categoriesResponse.data;
  }
}
