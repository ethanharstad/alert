part of 'event_edit_bloc.dart';

@freezed
sealed class EventEditBlocState with _$EventEditBlocState {
  const factory EventEditBlocState.loading() = EventEditBlocLoading;

  const factory EventEditBlocState.error({
    String? message,
  }) = EventEditBlocError;

  const factory EventEditBlocState.data({
    required GroupTree? tree,
    required Map<String, bool?> selections,
  }) = EventEditBlocData;
}
