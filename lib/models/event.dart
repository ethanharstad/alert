import 'package:alert/utils/timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    String? id,
    required String organizationId,
    required String eventType,
    @TimestampConverter() required DateTime openedAt,
    @TimestampNullableConverter() DateTime? closedAt,
    String? title,
    String? notes,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}
