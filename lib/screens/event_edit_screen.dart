import 'package:alert/blocs/group_bloc.dart';
import 'package:alert/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class EventEditScreen extends StatelessWidget {
  const EventEditScreen({super.key});

  Widget treeTile(GroupTree tree) {
    final root = CheckboxListTile(
      title: Text(tree.root!.name),
      value: false,
      onChanged: (bool? value) {},
    );
    if(tree.children.isNotEmpty) {
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
                    for(final subtree in tree.children)
                      treeTile(subtree),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }
    return root;
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Create Incident',
      body: ListView(
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
                    firstDate:
                        DateTime.now().subtract(const Duration(days: 365 * 5)),
                    lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
                  );
                  if (context.mounted) {
                    await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(DateTime.now()),
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
              IconButton(onPressed: () {}, icon: const Icon(Icons.access_time)),
              TextButton(onPressed: () {}, child: const Text('Now')),
            ],
          ),
          BlocBuilder<GroupBloc, GroupBlocState>(
            builder: (BuildContext context, GroupBlocState state) {
              switch (state) {
                case GroupBlocData(:final tree):
                  if (tree != null) {
                    return Column(
                      children: [
                        for (final subtree in tree.children) treeTile(subtree),
                      ],
                    );
                  }
                default:
              }
              return const SizedBox.shrink();
            },
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
      ),
    );
  }
}
