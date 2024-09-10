import 'package:alert/models/organization.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrganizationRepository {
  OrganizationRepository._();

  static final OrganizationRepository _instance = OrganizationRepository._();
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static final CollectionReference<Organization> _collection = _db
      .collection('organizations')
      .withConverter(fromFirestore: _fromFirestore, toFirestore: _toFirestore);

  factory OrganizationRepository() {
    return _instance;
  }
  
  Stream<DocumentSnapshot<Organization>> getOrganization(String id) {
    return _collection.doc(id).snapshots();
  }
  
  Stream<QuerySnapshot<Organization>> getOrganizations(List<String> ids) {
    return _collection.where(FieldPath.documentId, whereIn: ids).snapshots();
  }

  static Organization _fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final Map<String, dynamic> json = snapshot.data()!;
    json['id'] = snapshot.id;
    return Organization.fromJson(json);
  }

  static Map<String, Object?> _toFirestore(
    Organization value,
    SetOptions? options,
  ) {
    final Map<String, dynamic> json = value.toJson();
    json.remove('id');
    return json;
  }
}
