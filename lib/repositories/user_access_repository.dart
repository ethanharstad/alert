import 'package:alert/models/user_access.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserAccessRepository {
  UserAccessRepository._();

  static final UserAccessRepository _instance = UserAccessRepository._();
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static final CollectionReference<UserAccess> _collection =
      _db.collection('user_organization').withConverter(
            fromFirestore: _fromFirestore,
            toFirestore: _toFirestore,
          );

  factory UserAccessRepository() {
    return _instance;
  }
  
  Stream<QuerySnapshot<UserAccess>> getUserAccess(String id) {
    return _collection.where("userId", isEqualTo: id).snapshots();
  }

  static UserAccess _fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final Map<String, dynamic> json = snapshot.data()!;
    json['id'] = snapshot.id;
    return UserAccess.fromJson(json);
  }

  static Map<String, Object?> _toFirestore(
    UserAccess value,
    SetOptions? options,
  ) {
    final Map<String, dynamic> json = value.toJson();
    json.remove('id');
    return json;
  }
}
