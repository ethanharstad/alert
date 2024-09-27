import 'package:alert/models/event.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EventRepository {
  EventRepository._();

  static final EventRepository _instance = EventRepository._();
  static final FirebaseFirestore _db = FirebaseFirestore.instance;
  static final CollectionReference<Event> _collectionReference =
      _db.collection('events').withConverter(
            fromFirestore: _fromFirestore,
            toFirestore: _toFirestore,
          );

  factory EventRepository() {
    return _instance;
  }

  Future<Event?> persistEvent(Event event) async {
    final doc = _collectionReference.doc(event.id);
    await doc.set(event);
    final saved = await doc.get().then<Event?>((value) => value.data());
    return saved;
  }

  Stream<QuerySnapshot<Event>> getEvents(String organizationId) {
    return _collectionReference
        .where('organizationId', isEqualTo: organizationId)
        .orderBy("openedAt", descending: true)
        .limit(10)
        .snapshots();
  }

  Stream<DocumentSnapshot<Event>> getEvent(String eventId) {
    return _collectionReference.doc(eventId).snapshots();
  }

  static Event _fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final Map<String, dynamic> json = snapshot.data()!;
    json['id'] = snapshot.id;
    return Event.fromJson(json);
  }

  static Map<String, Object?> _toFirestore(
    Event value,
    SetOptions? options,
  ) {
    final Map<String, dynamic> json = value.toJson();
    json.remove('id');
    return json;
  }
}
