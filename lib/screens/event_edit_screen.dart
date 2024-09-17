import 'package:alert/blocs/event_edit_bloc.dart';
import 'package:alert/blocs/group_bloc.dart';
import 'package:alert/widgets/app_scaffold.dart';
import 'package:alert/widgets/time_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class EventEditScreen extends StatelessWidget {
  const EventEditScreen({
    this.initialType,
    super.key,
  });

  final String? initialType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EventEditBloc>(
      create: (_) => EventEditBloc(
        groupBloc: context.read<GroupBloc>(),
      )..typeSelected(initialType),
      child: BlocBuilder<EventEditBloc, EventEditBlocState>(
        builder: (BuildContext context, EventEditBlocState state) {
          Widget body = const Center(
            child: CircularProgressIndicator(),
          );
          switch (state) {
            case EventEditBlocError(:final message):
              body = Column(
                children: [
                  const Text('Error editing event.'),
                  if (message != null) Text(message),
                ],
              );
            case EventEditBlocData(
                :final tree,
                :final selectedType,
                :final title,
                :final notes,
                :final openedAt,
                :final closedAt,
                :final isValid,
              ):
              body = ListView(
                children: [
                  DropdownMenu<String>(
                    label: const Text('Type'),
                    errorText: switch(selectedType.error) {
                      null => null,
                      TypeInputError.notValid => 'Must select a valid type.',
                      TypeInputError.empty => 'Must select a type.',
                    },
                    initialSelection: selectedType.value,
                    dropdownMenuEntries: const [
                      DropdownMenuEntry(value: 'lockdown', label: 'Lockdown'),
                      DropdownMenuEntry(value: 'secure', label: 'Secure'),
                      DropdownMenuEntry(value: 'shelter', label: 'Shelter'),
                      DropdownMenuEntry(value: 'evacuate', label: 'Evacuate'),
                      DropdownMenuEntry(value: 'hold', label: 'Hold'),
                    ],
                    onSelected: (value) =>
                        context.read<EventEditBloc>().typeSelected(value),
                  ),
                  TextField(
                    onChanged: (value) =>
                        context.read<EventEditBloc>().titleUpdated(value),
                    decoration: InputDecoration(
                      labelText: 'Title',
                      errorText: switch(title.error) {
                        null => null,
                        TitleInputError.tooShort => 'Too short.',
                        TitleInputError.invalidCharacters => 'Invalid characters.',
                        TitleInputError.empty => 'Title cannot be empty.',
                      },
                    ),
                  ),
                  TimeField(label: 'Start Time'),
                  TimeField(label: 'End Time'),
                  Column(
                    children: [
                      if (tree != null)
                        for (final subtree in tree.children)
                          _TreeTile(tree: subtree),
                    ],
                  ),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    onChanged: (value) => context.read<EventEditBloc>().notesUpdated(value),
                    decoration: InputDecoration(
                      labelText: 'Notes',
                      errorText: switch(notes.error) {
                        null => null,
                        NotesInputError.invalidCharacters => 'Invalid characters.',
                      }
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: OverflowBar(
                      spacing: 8,
                      overflowAlignment: OverflowBarAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () => context.pop(),
                          child: const Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: isValid ? () {} : null,
                          child: const Text('Save'),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            default:
          }
          return AppScaffold(
            title: 'Create Incident',
            body: body,
          );
        },
      ),
    );
  }
}

class _TreeTile extends StatelessWidget {
  const _TreeTile({
    required this.tree,
    super.key,
  });

  final GroupTree tree;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<EventEditBloc, EventEditBlocState, bool?>(
      selector: (EventEditBlocState state) {
        switch (state) {
          case EventEditBlocData(:final selections):
            return selections[tree.root!.id!];
          default:
            return null;
        }
      },
      builder: (BuildContext context, bool? state) {
        final root = CheckboxListTile(
          title: Text(tree.root!.name),
          tristate: true,
          value: state,
          onChanged: (bool? value) {
            context.read<EventEditBloc>().groupSelectionUpdated(
                  group: tree.root!,
                  value: value ?? false,
                );
          },
        );
        if (tree.children.isNotEmpty) {
          return Column(
            children: [
              root,
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(width: 32),
                  Flexible(
                    child: Column(
                      children: [
                        for (final subtree in tree.children)
                          _TreeTile(tree: subtree),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        }
        return root;
      },
    );
  }
}
