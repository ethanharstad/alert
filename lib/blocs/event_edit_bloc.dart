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
  final Map<String, bool?> _selections = {};
  final Map<String, String?> _parents = {};
  final Map<String, List<String>> _children = {};
  GroupTree? _tree;

  void _groupsUpdated(GroupBlocState state) {
    switch (state) {
      case GroupBlocLoading():
        return emit(const EventEditBlocState.loading());
      case GroupBlocError(:final message):
        return emit(EventEditBlocState.error(message: message));
      case GroupBlocEmpty():
        return emit(const EventEditBlocState.data(tree: null, selections: {}));
      case GroupBlocData(:final groups, :final tree):
        _tree = tree!;
        for (final group in groups) {
          _parents[group.id!] = group.parentId;
          if(group.parentId !=null) {
            if(_children.containsKey(group.parentId) == false) {
              _children[group.parentId!] = [];
            }
            _children[group.parentId!]!.add(group.id!);
          }
          if (_selections.containsKey(group.id) == false) {
            _selections[group.id!] = false;
          }
        }
        return emit(EventEditBlocState.data(
          tree: _tree!,
          selections: Map.from(_selections),
        ));
      default:
    }
  }

  void groupSelectionUpdated({
    required Group group,
    required bool value,
  }) {
    _selections[group.id!] = value;
    _updateChildren(groupId: group.id!, value: value);
    _updateParent(groupId: group.id!, value: value);
    final newState = (state as EventEditBlocData)
        .copyWith(selections: Map.from(_selections));
    return emit(newState);
  }

  void _updateChildren({
    required String groupId,
    required bool value,
}) {
    if(_children[groupId] != null) {
      for(final childId in _children[groupId]!) {
        _selections[childId] = value;
        _updateChildren(groupId: childId, value: value);
      }
    }
  }

  void _updateParent({
    required String groupId,
    required bool value,
}) {
    final parentId = _parents[groupId];
    if(parentId != null) {
      bool? parentValue = value;
      final siblings = _children[parentId];
      if(siblings != null) {
        for(final siblingId in siblings) {
          if(_selections[siblingId] != value) {
            parentValue = null;
            break;
          }
        }
      }
      _selections[parentId] = parentValue;
      _updateParent(groupId: parentId, value: value);
    }
  }

  @override
  Future<void> close() {
    _groupListener.cancel();
    return super.close();
  }
}
