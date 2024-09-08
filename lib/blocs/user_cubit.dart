import 'package:alert/models/user_profile.dart';
import 'package:alert/repositories/user_profile_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cubit.freezed.dart';

part 'user_cubit_state.dart';

class UserCubit extends Cubit<UserCubitState> {
  UserCubit({UserProfileRepository? repository})
      : _repository = repository ?? UserProfileRepository(),
        super(const UserCubitState.loading());

  final UserProfileRepository _repository;
}
