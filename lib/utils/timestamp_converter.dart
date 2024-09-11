import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, dynamic> {
  const TimestampConverter();

  @override
  DateTime fromJson(dynamic timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime datetime) => Timestamp.fromDate(datetime);
}

class TimestampNullableConverter implements JsonConverter<DateTime?, dynamic> {
  const TimestampNullableConverter();

  @override
  DateTime? fromJson(dynamic timestamp) => timestamp?.toDate();

  @override
  Timestamp? toJson(DateTime? datetime) =>
      datetime == null ? null : Timestamp.fromDate(datetime);
}
