part of 'app_bloc.dart';

@freezed
sealed class AppState with _$AppState {
  const factory AppState.initializing() = Initializing;
  const factory AppState.unauthenticated() = Unauthenticated;
  const factory AppState.ready(AppUser user) = Ready;
}