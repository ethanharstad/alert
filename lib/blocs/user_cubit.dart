import 'dart:async';

import 'package:alert/models/app_user.dart';
import 'package:alert/models/user_profile.dart';
import 'package:alert/repositories/authentication_repository.dart';
import 'package:alert/repositories/user_profile_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cubit.freezed.dart';

part 'user_cubit_state.dart';

class UserCubit extends Cubit<UserCubitState> {
  UserCubit({
    UserProfileRepository? profileRepository,
    required AuthenticationRepository authRepository,
  })  : _profileRepository = profileRepository ?? UserProfileRepository(),
        _authenticationRepository = authRepository,
        super(const UserCubitState.empty()) {
    authStateChanged(_authenticationRepository.currentUser);
   _authenticationRepository.user.map(authStateChanged); 
  }

  final UserProfileRepository _profileRepository;
  final AuthenticationRepository _authenticationRepository;
  StreamSubscription<DocumentSnapshot<UserProfile>>? _listener;

  void authStateChanged(AppUser? user) {
    _listener?.cancel();
    if(user == null) {
      return emit(const UserCubitState.empty());
    }
    emit(const UserCubitState.loading());
    _listener = _profileRepository.getUserProfile(user.id).listen(profileUpdated);
  }
  
  void profileUpdated(DocumentSnapshot<UserProfile> snapshot) {
    final profile = snapshot.data();
    if(profile == null) {
      return emit(const UserCubitState.empty());
    }
    emit(UserCubitState.data(profile: profile));
  }
}
