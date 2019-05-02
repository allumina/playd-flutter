import 'package:uuid/uuid.dart';

abstract class BaseModel {
  String id;
  String uid;
  String identifier;
  String friendly;
  String category;
  String type;
  bool isVisible;
  bool isEnabled;
  bool isDeleted;
  int sortIndex;
  int flags;
  String locale;
  String localId;
  String ownerId;
  String userId;
  String parentId;
  String ancestorId;
  String groupId;
  String externalId;
  int createTime;
  int updateTime;
  int deleteTime;

  BaseModel();

  BaseModel.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      throw FormatException("Null JSON provided");
    }

    this.id = data['id'];
    this.uid = data['uid'];
    this.identifier = data['identifier'];
    this.friendly = data['friendly'];
    this.category = data['category'];
    this.type = data['type'];
    this.isVisible = data['isVisible'];
    this.isEnabled = data['isEnabled'];
    this.isDeleted = data['isDeleted'];
    this.sortIndex = data['sortIndex'];
    this.flags = data['flags'];
    this.locale = data['locale'];
    this.localId = data['localId'];
    this.ownerId = data['ownerId'];
    this.userId = data['userId'];
    this.parentId = data['parentId'];
    this.ancestorId = data['ancestorId'];
    this.groupId = data['groupId'];
    this.externalId = data['externalId'];
    this.createTime = data['createTime'];
    this.updateTime = data['updateTime'];
    this.deleteTime = data['deleteTime'];

    if (this.id == null || this.id.length <= 0) this.assignId();
  }

  void fromMap(Map<String, dynamic> data) {
    if (data == null) {
      throw FormatException("Null JSON provided");
    }
    this.id = data['id'];
    this.uid = data['uid'];
    this.identifier = data['identifier'];
    this.friendly = data['friendly'];
    this.category = data['category'];
    this.type = data['type'];
    this.isVisible = data['isVisible'];
    this.isEnabled = data['isEnabled'];
    this.isDeleted = data['isDeleted'];
    this.sortIndex = data['sortIndex'];
    this.flags = data['flags'];
    this.locale = data['locale'];
    this.localId = data['localId'];
    this.ownerId = data['ownerId'];
    this.userId = data['userId'];
    this.parentId = data['parentId'];
    this.ancestorId = data['ancestorId'];
    this.groupId = data['groupId'];
    this.externalId = data['externalId'];
    this.createTime = data['createTime'];
    this.updateTime = data['updateTime'];
    this.deleteTime = data['deleteTime'];

    if (this.id == null || this.id.length <= 0) this.assignId();
  }

  Map<String, dynamic> toMap() => {
        'id': this.id,
        'uid': this.uid,
        'identifier': this.identifier,
        'friendly': this.friendly,
        'category': this.category,
        'type': this.type,
        'isVisible': this.isVisible,
        'isEnabled': this.isEnabled,
        'isDeleted': this.isDeleted,
        'sortIndex': this.sortIndex,
        'flags': this.flags,
        'locale': this.locale,
        'localId': this.localId,
        'ownerId': this.ownerId,
        'userId': this.userId,
        'parentId': this.parentId,
        'ancestorId': this.ancestorId,
        'groupId': this.groupId,
        'externalId': this.externalId,
        'createTime': this.createTime,
        'updateTime': this.updateTime,
        'deleteTime': this.deleteTime
      };

  void assignId() {
    this.id = Uuid().v4();
  }
}
