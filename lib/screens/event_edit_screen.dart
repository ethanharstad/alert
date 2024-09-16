import 'package:alert/blocs/event_edit_bloc.dart';
import 'package:alert/blocs/group_bloc.dart';
import 'package:alert/widgets/app_scaffold.dart';
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
      ),
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
            case EventEditBlocData(:final tree, :final selections):
              body = ListView(
                children: [
                  const DropdownMenu<String>(
                    label: Text('Type'),
                    dropdownMenuEntries: [
                      DropdownMenuEntry(value: 'lockdown', label: 'Lockdown'),
                      DropdownMenuEntry(value: 'secure', label: 'Secure'),
                      DropdownMenuEntry(value: 'shelter', label: 'Shelter'),
                      DropdownMenuEntry(value: 'evacuate', label: 'Evacuate'),
                      DropdownMenuEntry(value: 'hold', label: 'Hold'),
                    ],
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                      helperText: 'Optional',
                    ),
                  ),
                  Row(
                    children: [
                      const Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Start Time',
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now()
                                .subtract(const Duration(days: 365 * 5)),
                            lastDate: DateTime.now()
                                .add(const Duration(days: 365 * 5)),
                          );
                          if (context.mounted) {
                            await showTimePicker(
                              context: context,
                              initialTime:
                                  TimeOfDay.fromDateTime(DateTime.now()),
                            );
                          }
                        },
                        icon: const Icon(Icons.access_time),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Now'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'End Time',
                            helperText: 'Optional',
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.access_time)),
                      TextButton(onPressed: () {}, child: const Text('Now')),
                    ],
                  ),
                  Column(
                    children: [
                      if (tree != null)
                        for (final subtree in tree.children)
                          _TreeTile(tree: subtree),
                    ],
                  ),
                  const TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Notes',
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
                          onPressed: () {},
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
