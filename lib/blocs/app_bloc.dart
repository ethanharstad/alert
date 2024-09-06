import 'package:alert/models/app_user.dart';
import 'package:alert/repositories/authentication_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AuthenticationRepository _authenticationRepository;

  AppBloc({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(const AppState.initializing()) {
    on<UserSubscriptionRequested>(_onUserSubscriptionRequested);
    on<LogOutPressed>(_onLogOutPressed);
  }

  Future<void> _onUserSubscriptionRequested(
      UserSubscriptionRequested event, Emitter<AppState> emit) {
    return emit.onEach(
      _authenticationRepository.user,
      onData: (AppUser? user) {
        if(user != null) {
          emit(AppState.ready(user));
          return;
        }
        emit(const AppState.unauthenticated());
      },
      onError: addError,
    );
  }

  void _onLogOutPressed(LogOutPressed event, Emitter<AppState> emit) {
    _authenticationRepository.logOut();
  }
}
