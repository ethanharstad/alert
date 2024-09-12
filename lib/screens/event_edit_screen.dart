import 'package:alert/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class EventEditScreen extends StatelessWidget {
  const EventEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Create Incident',
      body: Column(
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
                  onPressed: () {},
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
