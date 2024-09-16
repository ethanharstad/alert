import 'dart:async';
import 'dart:core';

import 'package:alert/blocs/group_bloc.dart';
import 'package:alert/models/group.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_edit_bloc.freezed.dart';

part 'event_edit_bloc_state.dart';

class EventEditBloc extends Cubit<EventEditBlocState> {
  EventEditBloc({required GroupBloc groupBloc})
      : super(const EventEditBlocLoading()) {
    _groupListener = groupBloc.stream.listen(_groupsUpdated);
    _groupsUpdated(groupBloc.state);
  }

  late final StreamSubscription<GroupBlocState> _groupListener;
  Map<String, bool?> _selections = {};
  Map<String, String?> _parents = {};
  GroupTree? _tree;

  void _groupsUpdated(GroupBlocState state) {
    switch (state) {
      case GroupBlocLoading():
        return emit(const EventEditBlocState.loading());
      case GroupBlocError(:final message):
        return emit(EventEditBlocState.error(message: message));
      case GroupBlocEmpty():
        return emit(
            EventEditBlocState.data(tree: null, selections: _selections));
      case GroupBlocData(:final groups, :final tree):
        _tree = tree!;
        for (final group in groups) {
          _parents[group.id!] = group.parentId;
          if (_selections.containsKey(group.id) == false) {
            _selections[group.id!] = false;
          }
        }
        return emit(EventEditBlocData(
          tree: _tree!,
          selections: _selections,
        ));
      default:
    }
  }

  void groupSelectionUpdated({
    required Group group,
    required bool value,
  }) {
    print("groupSelectionUpdated: $group $value");
    print("before $_selections");
    _selections[group.id!] = value;
    print("after $_selections");
    final newState =
        (state as EventEditBlocData).copyWith(selections: _selections);
    print("$state => $newState");
    print(state == newState);
    return emit(state);
  }

  @override
  Future<void> close() {
    _groupListener.cancel();
    return super.close();
  }
}
