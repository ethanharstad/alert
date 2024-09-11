import 'package:alert/models/group.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GroupRepository {
  GroupRepository._();

  static final GroupRepository _instance = GroupRepository._();
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static final CollectionReference<Group> _collectionReference = _db
      .collection('groups')
      .withConverter(fromFirestore: _fromFirestore, toFirestore: _toFirestore);

  factory GroupRepository() {
    return _instance;
  }

  Future<void> persistGroup(Group group) {
    final doc = _collectionReference.doc(group.id);
    return doc.set(group);
  }

  Stream<QuerySnapshot<Group>> getGroups(String organizationId) {
    return _collectionReference
        .where('organizationId', isEqualTo: organizationId)
        .snapshots();
  }

  static Group _fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final Map<String, dynamic> json = snapshot.data()!;
    json['id'] = snapshot.id;
    return Group.fromJson(json);
  }

  static Map<String, Object?> _toFirestore(
    Group value,
    SetOptions? options,
  ) {
    final Map<String, dynamic> json = value.toJson();
    json.remove('id');
    return json;
  }
}
