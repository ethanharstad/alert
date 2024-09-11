part of 'event_bloc.dart';

@freezed
sealed class EventBlocState with _$EventBlocState {
  const factory EventBlocState.error({
    String? message,
  }) = EventBlocError;

  const factory EventBlocState.loading() = EventBlocLoading;

  const factory EventBlocState.empty() = EventBlocEmpty;

  const factory EventBlocState.data({
    required List<Event> events,
  }) = EventBlocData;
}
