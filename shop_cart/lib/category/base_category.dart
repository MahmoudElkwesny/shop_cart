abstract class BaseCategory {
  String id;
  String title;

  BaseCategory(this.id, this.title);

  BaseCategory.fromJson(Map<String, dynamic> jsonobject) {
    this.id = jsonobject['id'];
    this.title = jsonobject['title'];
  }
}
