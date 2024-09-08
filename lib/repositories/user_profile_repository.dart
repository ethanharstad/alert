import 'package:alert/models/user_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfileRepository {
  UserProfileRepository._();

  static final UserProfileRepository _instance = UserProfileRepository._();
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static final CollectionReference<UserProfile> _collection =
      _db.collection('users').withConverter(
            fromFirestore: _fromFirestore,
            toFirestore: _toFirestore,
          );

  factory UserProfileRepository() {
    return _instance;
  }

  Stream<DocumentSnapshot<UserProfile>> getUserProfileStream(String id) {
    return _collection.doc(id).snapshots();
  }

  Stream<UserProfile?> getUserProfile(String id) async* {
    final snapshots = _collection.doc(id).snapshots();
    await for (final docSnapshot in snapshots) {
      yield docSnapshot.data();
    }
  }

  static UserProfile _fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final Map<String, dynamic> json = snapshot.data()!;
    json['id'] = snapshot.id;
    return UserProfile.fromJson(json);
  }

  static Map<String, Object?> _toFirestore(
    UserProfile value,
    SetOptions? options,
  ) {
    final Map<String, dynamic> json = value.toJson();
    json.remove('id');
    return json;
  }
}
