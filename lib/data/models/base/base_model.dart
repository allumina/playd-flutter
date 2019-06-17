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
  int version;
  int createTime;
  int updateTime;
  int deleteTime;
  String raw;
  bool dirty;

  BaseModel({this.id});

  BaseModel.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.uid = map['uid'];
    this.identifier = map['identifier'];
    this.friendly = map['friendly'];
    this.category = map['category'];
    this.type = map['type'];
    this.isVisible = (map['is_visible'] is int)
        ? ((map['is_visible'] == 1) ? true : false)
        : map['is_visible'];
    this.isEnabled = (map['is_enabled'] is int)
        ? ((map['is_enabled'] == 1) ? true : false)
        : map['is_enabled'];
    this.isDeleted = (map['is_deleted'] is int)
        ? ((map['is_deleted'] == 1) ? true : false)
        : map['is_deleted'];
    this.sortIndex = map['sort_index'];
    this.flags = map['flags'];
    this.locale = map['locale'];
    this.localId = map['local_id'];
    this.ownerId = map['owner_id'];
    this.userId = map['user_id'];
    this.parentId = map['parent_id'];
    this.ancestorId = map['ancestor_id'];
    this.groupId = map['group_id'];
    this.externalId = map['external_id'];
    this.version = map['version'];
    this.createTime = map['create_time'];
    this.updateTime = map['update_time'];
    this.deleteTime = map['delete_time'];
    this.raw = map['raw'];
    this.dirty = false;

    if (this.id == null || this.id.length <= 0) this.assignId();
  }

  Map<String, dynamic> toMap([bool boolToInt = false]) => {
        'id': this.id,
        'uid': this.uid,
        'identifier': this.identifier,
        'friendly': this.friendly,
        'category': this.category,
        'type': this.type,
        'is_visible': (boolToInt) ? (this.isVisible ? 1 : 0) : this.isVisible,
        'is_enabled': (boolToInt) ? (this.isEnabled ? 1 : 0) : this.isEnabled,
        'is_deleted': (boolToInt) ? (this.isDeleted ? 1 : 0) : this.isDeleted,
        'sort_index': this.sortIndex,
        'flags': this.flags,
        'locale': this.locale,
        'local_id': this.localId,
        'owner_id': this.ownerId,
        'user_id': this.userId,
        'parent_id': this.parentId,
        'ancestor_id': this.ancestorId,
        'group_id': this.groupId,
        'external_id': this.externalId,
        'version': this.version,
        'create_time': this.createTime,
        'update_time': this.updateTime,
        'delete_time': this.deleteTime,
        'raw': this.raw
      };

  void assignId([bool force = false]) {
    if (force || this.id == null || this.id.length <= 0) this.id = Uuid().v4();
  }

  void assignIdentifier([bool force = false]) {
    if (force || this.identifier == null || this.identifier.length <= 0)
      this.identifier = Uuid().v4();
  }
}
