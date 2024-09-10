import 'dart:async';

import 'package:alert/models/app_user.dart';
import 'package:alert/models/organization.dart';
import 'package:alert/models/user_access.dart';
import 'package:alert/repositories/authentication_repository.dart';
import 'package:alert/repositories/organization_repository.dart';
import 'package:alert/repositories/user_access_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'organization_bloc.freezed.dart';

part 'organization_state.dart';

class OrganizationBloc extends Cubit<OrganizationBlocState> {
  OrganizationBloc({
    AuthenticationRepository? authenticationRepository,
    OrganizationRepository? organizationRepository,
    UserAccessRepository? userAccessRepository,
  })  : _authenticationRepository =
            authenticationRepository ?? AuthenticationRepository(),
        _organizationRepository =
            organizationRepository ?? OrganizationRepository(),
        _userAccessRepository = userAccessRepository ?? UserAccessRepository(),
        super(const OrganizationBlocState.empty()) {
    authStateChanged(_authenticationRepository.currentUser);
    _authenticationRepository.user.map(authStateChanged);
  }

  final AuthenticationRepository _authenticationRepository;
  final OrganizationRepository _organizationRepository;
  final UserAccessRepository _userAccessRepository;
  StreamSubscription<QuerySnapshot<UserAccess>>? _accessListener;
  StreamSubscription<QuerySnapshot<Organization>>? _organizationListener;

  void authStateChanged(AppUser? user) {
    _organizationListener?.cancel();
    _accessListener?.cancel();
    if (user == null) {
      return emit(const OrganizationBlocState.empty());
    }
    emit(const OrganizationBlocState.loading());
    _accessListener =
        _userAccessRepository.getUserAccess(user.id).listen(accessUpdated);
  }

  void accessUpdated(QuerySnapshot<UserAccess> accessSnapshot) {
    _organizationListener?.cancel();
    final accessList = accessSnapshot.docs;
    final orgIds = accessList
        .map(
          (QueryDocumentSnapshot<UserAccess> x) => x.data(),
        )
        .map(
          (UserAccess x) => x.organizationId,
        )
        .toList(growable: false);
    _organizationListener = _organizationRepository
        .getOrganizations(orgIds)
        .listen(organizationsUpdated);
  }

  void organizationsUpdated(QuerySnapshot<Organization> organizationsSnapshot) {
    if (organizationsSnapshot.size == 0) {
      emit(const OrganizationBlocState.empty());
      return;
    }
    final List<Organization> orgs = organizationsSnapshot.docs
        .map(
          (QueryDocumentSnapshot<Organization> x) => x.data(),
        )
        .toList(growable: false);
    Organization? selected;
    switch (state) {
      case OrganizationBlocData(:final selectedOrganization):
        selected =
            orgs.contains(selectedOrganization) ? selectedOrganization : null;
      default:
    }
    emit(OrganizationBlocState.data(
      organizations: orgs,
      selectedOrganization: selected,
    ));
  }
}
