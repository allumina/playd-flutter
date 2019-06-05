import 'package:playd_flutter/data/models/base/base_content_model.dart';

abstract class GenericContentModel extends BaseContentModel {
  String launch;
  String abstracts;
  String body;
  String cover;
  String scheduling;
  int startTime;
  int endTime;
  double latitude;
  double longitude;

  GenericContentModel() : super();

  GenericContentModel.fromMap(Map<String, dynamic> map) : super.fromMap(map) {
    this.launch = map['launch'];
    this.abstracts = map['abstract'];
    this.body = map['body'];
    this.cover = map['cover'];
    this.scheduling = map['scheduling'];
    this.startTime = map['start_time'];
    this.endTime = map['end_time'];
    this.latitude = map['latitude'];
    this.latitude = map['longitude'];
  }

  @override
  Map<String, dynamic> toMap([bool boolToInt = false]) {
    Map<String, dynamic> map = super.toMap(boolToInt);
    map['launch'] = this.launch;
    map['abstract'] = this.abstracts;
    map['body'] = this.body;
    map['cover'] = this.cover;
    map['scheduling'] = this.scheduling;
    map['start_time'] = this.startTime;
    map['end_time'] = this.endTime;
    map['latitude'] = this.latitude;
    map['longitude'] = this.longitude;
    return map;
  }
}
