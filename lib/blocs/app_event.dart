part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.userSubscriptionRequested() =
      UserSubscriptionRequested;

  const factory AppEvent.logOutPressed() = LogOutPressed;
}
