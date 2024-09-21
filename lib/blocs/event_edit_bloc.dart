import 'dart:async';
import 'dart:core';

import 'package:alert/blocs/group_bloc.dart';
import 'package:alert/models/group.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

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
  String? _selectedType;

  void _groupsUpdated(GroupBlocState state) {
    switch (state) {
      case GroupBlocLoading():
        return emit(const EventEditBlocState.loading());
      case GroupBlocError(:final message):
        return emit(EventEditBlocState.error(message: message));
      case GroupBlocEmpty():
        return emit(EventEditBlocState.data(
          tree: null,
          selections: {},
          selectedType: TypeInput.dirty(value: _selectedType ?? ''),
        ));
      case GroupBlocData(:final groups, :final tree):
        _tree = tree!;
        for (final group in groups) {
          _parents[group.id!] = group.parentId;
          if (group.parentId != null) {
            if (_children.containsKey(group.parentId) == false) {
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
          selectedType: TypeInput.dirty(value: _selectedType ?? ''),
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

  void typeSelected(String? selectedType) {
    _selectedType = selectedType;
    if (state is EventEditBlocData) {
      final data = state as EventEditBlocData;
      final value = TypeInput.dirty(
        value: selectedType ?? '',
      );
      return emit(
        data.copyWith(
          selectedType: value,
          isValid: Formz.validate([
            value,
            data.title,
            data.notes,
            data.openedAt,
            data.closedAt,
          ]),
        ),
      );
    }
  }

  void titleUpdated(String? value) {
    if (state is EventEditBlocData) {
      final data = state as EventEditBlocData;
      final input = TitleInput.dirty(value: value ?? '');
      emit(
        data.copyWith(
            title: input,
            isValid: Formz.validate([
              data.selectedType,
              input,
              data.notes,
              data.openedAt,
              data.closedAt,
            ])),
      );
    }
  }

  void notesUpdated(String? value) {
    if (state is EventEditBlocData) {
      final data = state as EventEditBlocData;
      final input = NotesInput.dirty(value: value ?? '');
      emit(
        data.copyWith(
          notes: input,
          isValid: Formz.validate([
            data.selectedType,
            data.title,
            input,
            data.openedAt,
            data.closedAt,
          ]),
        ),
      );
    }
  }

  void startTimeUpdated(String? value) {
    if (state is EventEditBlocData) {
      final data = state as EventEditBlocData;
      final input = TimeInput.dirty(
        value: value ?? '',
        required: true,
      );
      emit(
        data.copyWith(
          openedAt: input,
          isValid: Formz.validate([
            data.selectedType,
            data.title,
            data.notes,
            input,
            data.closedAt,
          ]),
        ),
      );
    }
  }

  void endTimeUpdated(String? value) {
    if (state is EventEditBlocData) {
      final data = state as EventEditBlocData;
      final input = TimeInput.dirty(
        value: value ?? '',
        after: DateTime.tryParse(data.openedAt.value),
      );
      emit(
        data.copyWith(
          closedAt: input,
          isValid: Formz.validate([
            data.selectedType,
            data.title,
            data.notes,
            data.openedAt,
            input,
          ]),
        ),
      );
    }
  }

  void _updateChildren({
    required String groupId,
    required bool value,
  }) {
    if (_children[groupId] != null) {
      for (final childId in _children[groupId]!) {
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
    if (parentId != null) {
      bool? parentValue = value;
      final siblings = _children[parentId];
      if (siblings != null) {
        for (final siblingId in siblings) {
          if (_selections[siblingId] != value) {
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

enum TypeInputError {
  notValid,
  empty,
}

class TypeInput extends FormzInput<String, TypeInputError> {
  const TypeInput.pure() : super.pure('');

  const TypeInput.dirty({String value = ''}) : super.dirty(value);

  @override
  TypeInputError? validator(String value) {
    const List<String> eventTypes = [
      'lockdown',
      'secure',
      'shelter',
      'evacuate',
      'hold',
    ];
    if (value == '') {
      return TypeInputError.empty;
    }
    if (eventTypes.contains(value) == false) {
      return TypeInputError.notValid;
    }
    return null;
  }
}

enum TitleInputError {
  tooShort,
  invalidCharacters,
  empty,
}

class TitleInput extends FormzInput<String, TitleInputError> {
  const TitleInput.pure() : super.pure('');

  const TitleInput.dirty({String value = ''}) : super.dirty(value);

  @override
  TitleInputError? validator(String value) {
    if (value == '') {
      return TitleInputError.empty;
    }
    if (value.length < 5) {
      return TitleInputError.tooShort;
    }
    return null;
  }
}

enum NotesInputError {
  invalidCharacters,
}

class NotesInput extends FormzInput<String, NotesInputError> {
  const NotesInput.pure() : super.pure('');

  const NotesInput.dirty({String value = ''}) : super.dirty(value);

  @override
  NotesInputError? validator(String value) {
    return null;
  }
}

enum TimeInputError {
  empty,
  before,
  after,
  parse,
}

class TimeInput extends FormzInput<String, TimeInputError> {
  final bool required;
  final DateTime? before;
  final DateTime? after;

  const TimeInput.pure({
    this.required = false,
    this.before,
    this.after,
  }) : super.pure('');

  const TimeInput.dirty({
    String value = '',
    this.required = false,
    this.before,
    this.after,
  }) : super.dirty(value);

  @override
  TimeInputError? validator(String value) {
    if (value.isEmpty) {
      if (required) {
        return TimeInputError.empty;
      }
      return null;
    }
    final parsed = DateFormat.yMd().add_jms().tryParse(value);
    if (parsed == null) {
      return TimeInputError.parse;
    }
    return null;
  }
}
