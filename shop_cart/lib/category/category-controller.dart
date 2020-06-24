

import 'base_category.dart';

abstract class CategoryController {
  BaseCategory category;

  CategoryController(this.category);

  static List<BaseCategory> toCategories(
      List<Map<String, dynamic>> jsonObjects) {}
}
