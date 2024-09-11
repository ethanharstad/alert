import 'dart:async';

import 'package:alert/blocs/organization_bloc.dart';
import 'package:alert/models/event.dart';
import 'package:alert/repositories/event_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_bloc.freezed.dart';

part 'event_bloc_state.dart';

class EventBloc extends Cubit<EventBlocState> {
  EventBloc({
    required OrganizationBloc organizationBloc,
    EventRepository? eventRepository,
  })  : _eventRepository = eventRepository ?? EventRepository(),
        super(const EventBlocState.empty()) {
    _organizationListener = organizationBloc.stream.listen(organizationChanged);
    organizationChanged(organizationBloc.state);
  }

  final EventRepository _eventRepository;
  late final StreamSubscription<OrganizationBlocState> _organizationListener;
  StreamSubscription<QuerySnapshot<Event>>? _eventListener;

  @override
  Future<void> close() {
    _eventListener?.cancel();
    _organizationListener.cancel();
    return super.close();
  }

  void organizationChanged(OrganizationBlocState state) {
    switch (state) {
      case OrganizationBlocData(:final selectedOrganization):
        if (selectedOrganization == null) {
          _eventListener?.cancel();
          return emit(const EventBlocState.empty());
        }
        emit(const EventBlocState.loading());
        _eventListener = _eventRepository
            .getEvents(selectedOrganization.id!)
            .listen(eventsUpdated);
      default:
    }
  }

  void eventsUpdated(QuerySnapshot<Event> snapshot) {
    if (snapshot.size == 0) {
      return emit(const EventBlocState.empty());
    }
    return emit(
      EventBlocState.data(
        events: snapshot.docs
            .map(
              (QueryDocumentSnapshot<Event> docSnapshot) => docSnapshot.data(),
            )
            .toList(growable: false),
      ),
    );
  }
}
