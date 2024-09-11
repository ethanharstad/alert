import 'dart:async';

import 'package:alert/blocs/organization_bloc.dart';
import 'package:alert/models/event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_bloc.freezed.dart';

part 'event_bloc_state.dart';

class EventBloc extends Cubit<EventBlocState> {
  EventBloc({required OrganizationBloc organizationBloc,})
      : super(const EventBlocState.empty()) {
    _organizationListener = organizationBloc.stream.listen(organizationChanged)
    organizationChanged(organizationBloc.state);
  }

  late final StreamSubscription<OrganizationBlocState> _organizationListener;

  @override
  Future<void> close() {
    _organizationListener.cancel();
    return super.close();
  }

  void organizationChanged(OrganizationBlocState state) {
    switch(state) {
      case OrganizationBlocData(:final selectedOrganization):
        if(selectedOrganization != null) {
          return;
        }
      default:
    }
  }
}
