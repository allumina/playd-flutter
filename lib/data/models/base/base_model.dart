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
    this.isVisible = (data['is_visible'] is int)
        ? ((data['is_visible'] == 1) ? true : false)
        : data['is_visible'];
    this.isEnabled = (data['is_enabled'] is int)
        ? ((data['is_enabled'] == 1) ? true : false)
        : data['is_enabled'];
    this.isDeleted = (data['is_deleted'] is int)
        ? ((data['is_deleted'] == 1) ? true : false)
        : data['is_deleted'];
    this.sortIndex = data['sort_index'];
    this.flags = data['flags'];
    this.locale = data['locale'];
    this.localId = data['local_id'];
    this.ownerId = data['owner_id'];
    this.userId = data['user_id'];
    this.parentId = data['parent_id'];
    this.ancestorId = data['ancestor_id'];
    this.groupId = data['group_id'];
    this.externalId = data['external_id'];
    this.version = data['version'];
    this.createTime = data['create_time'];
    this.updateTime = data['update_time'];
    this.deleteTime = data['delete_time'];

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
    this.isVisible = (data['is_visible'] is int)
        ? ((data['is_visible'] == 1) ? true : false)
        : data['is_visible'];
    this.isEnabled = (data['is_enabled'] is int)
        ? ((data['is_enabled'] == 1) ? true : false)
        : data['is_enabled'];
    this.isDeleted = (data['is_deleted'] is int)
        ? ((data['is_deleted'] == 1) ? true : false)
        : data['is_deleted'];
    this.sortIndex = data['sort_index'];
    this.flags = data['flags'];
    this.locale = data['locale'];
    this.localId = data['local_id'];
    this.ownerId = data['owner_id'];
    this.userId = data['user_id'];
    this.parentId = data['parent_id'];
    this.ancestorId = data['ancestor_id'];
    this.groupId = data['group_id'];
    this.externalId = data['external_id'];
    this.version = data['version'];
    this.createTime = data['create_time'];
    this.updateTime = data['update_time'];
    this.deleteTime = data['delete_time'];

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
        'delete_time': this.deleteTime
      };

  void assignId([bool force = false]) {
    if (force || this.id == null || this.id.length <= 0) this.id = Uuid().v4();
  }
}
