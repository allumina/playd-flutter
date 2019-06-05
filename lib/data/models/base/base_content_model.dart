import 'package:playd_flutter/data/models/base/base_model.dart';

abstract class BaseContentModel extends BaseModel {
  String title;
  String slug;

  BaseContentModel() : super();

  BaseContentModel.fromMap(Map<String, dynamic> map) : super.fromMap(map) {
    this.title = map['title'];
    this.slug = map['slug'];
  }

  @override
  Map<String, dynamic> toMap([bool boolToInt = false]) {
    Map<String, dynamic> map = super.toMap(boolToInt);
    map['title'] = this.title;
    map['slug'] = this.slug;
    return map;
  }
}
