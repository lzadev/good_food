import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/categories_response.dart';

import '../models/category.dart';

class CategoryProvider extends ChangeNotifier {
  final String _baseUrl = "forfoodapp.herokuapp.com";

  List<Category> categories = [];

  CategoryProvider() {
    getCategories();
  }

  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(_baseUrl, endpoint);
    final reponse = await http.get(url);
    return reponse.body;
  }

  getCategories() async {
    final jsonData = await _getJsonData("api/categories");

    final categoriesResponse = CategoryResponse.fromJson(jsonData);
    categories = categoriesResponse.data;
    notifyListeners();
  }
}
