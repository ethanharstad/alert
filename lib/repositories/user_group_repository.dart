import 'package:alert/models/user_group.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserGroupRepository {
  UserGroupRepository._();

  static final UserGroupRepository _instance = UserGroupRepository._();
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static final CollectionReference<UserGroup> _collection =
      _db.collection('user_group').withConverter(
            fromFirestore: _fromFirestore,
            toFirestore: _toFirestore,
          );

  factory UserGroupRepository() {
    return _instance;
  }

  Stream<QuerySnapshot<UserGroup>> getUserGroups(
      String userId, String organizationId) {
    return _collection
        .where("userId", isEqualTo: userId)
        .where("organizationId", isEqualTo: organizationId)
        .snapshots();
  }

  static UserGroup _fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final Map<String, dynamic> json = snapshot.data()!;
    json['id'] = snapshot.id;
    return UserGroup.fromJson(json);
  }

  static Map<String, Object?> _toFirestore(
    UserGroup value,
    SetOptions? options,
  ) {
    final Map<String, dynamic> json = value.toJson();
    json.remove('id');
    return json;
  }
}
