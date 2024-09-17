part of 'event_edit_bloc.dart';

@freezed
sealed class EventEditBlocState with _$EventEditBlocState {
  const factory EventEditBlocState.loading() = EventEditBlocLoading;

  const factory EventEditBlocState.error({
    String? message,
  }) = EventEditBlocError;

  const factory EventEditBlocState.data({
    @Default(false) bool isValid,
    required GroupTree? tree,
    required Map<String, bool?> selections,
    @Default(TypeInput.pure()) TypeInput selectedType,
    @Default(TitleInput.pure()) TitleInput title,
    @Default(NotesInput.pure()) NotesInput notes,
    DateTime? openedAt,
    DateTime? closedAt,
  }) = EventEditBlocData;
}
