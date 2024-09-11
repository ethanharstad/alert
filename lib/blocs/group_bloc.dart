import 'dart:async';

import 'package:alert/blocs/organization_bloc.dart';
import 'package:alert/models/group.dart';
import 'package:alert/repositories/group_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_bloc.freezed.dart';

part 'group_bloc_state.dart';

class GroupBloc extends Cubit<GroupBlocState> {
  GroupBloc({
    required OrganizationBloc organizationBloc,
    GroupRepository? groupRepository,
  })  : _groupRepository = groupRepository ?? GroupRepository(),
        super(const GroupBlocState.empty()) {
    _organizationListener = organizationBloc.stream.listen(organizationChanged);
    organizationChanged(organizationBloc.state);
  }

  final GroupRepository _groupRepository;
  late final StreamSubscription<OrganizationBlocState> _organizationListener;
  StreamSubscription<QuerySnapshot<Group>>? _groupListener;

  @override
  Future<void> close() {
    _groupListener?.cancel();
    _organizationListener.cancel();
    return super.close();
  }

  void organizationChanged(OrganizationBlocState state) {
    switch (state) {
      case OrganizationBlocData(:final selectedOrganization):
        if (selectedOrganization == null) {
          _groupListener?.cancel();
          return emit(const GroupBlocState.empty());
        }
        emit(const GroupBlocState.loading());
        _groupListener = _groupRepository
            .getGroups(selectedOrganization.id!)
            .listen(groupsUpdated);
      default:
    }
  }

  void groupsUpdated(QuerySnapshot<Group> snapshot) {
    if (snapshot.size == 0) {
      return emit(const GroupBlocState.empty());
    }
    return emit(
      GroupBlocState.data(
        groups: snapshot.docs
            .map(
              (QueryDocumentSnapshot<Group> docSnapshot) => docSnapshot.data(),
            )
            .toList(growable: false),
      ),
    );
  }
}
