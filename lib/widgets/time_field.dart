import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeField extends StatelessWidget {
  TimeField({
    required this.label,
    this.required = false,
    this.onChanged,
    this.errorText,
    super.key,
  });

  final String label;
  final TextEditingController _controller = TextEditingController();
  final bool required;
  final Function(String?)? onChanged;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: label,
              helperText: '1969-07-20 20:18:04',
              errorText: errorText,
            ),
            onChanged: setValue,
          ),
        ),
        IconButton(
          onPressed: () => showPicker(context),
          icon: const Icon(Icons.access_time),
        ),
        TextButton(
          onPressed: setNow,
          child: const Text('Now'),
        ),
      ],
    );
  }

  void showPicker(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 5)),
      lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
    );
    if (date == null) return;
    TimeOfDay? time;
    if (context.mounted) {
      time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(DateTime.now()),
      );
    }
    if (time == null) return;
    final dateTime =
        DateTime(date.year, date.month, date.day, time.hour, time.minute);
    final parsed = DateFormat.yMd().add_jms().format(dateTime);
    setValue(parsed);
  }

  void setNow() {
    final DateTime now = DateTime.now().toLocal();
    final parsed = DateFormat.yMd().add_jms().format(now);
    setValue(parsed);
  }

  void setValue(String value) {
    // final currentOffset = _controller.selection.base.offset;
    _controller.value = TextEditingValue(
      text: value,
      selection: TextSelection.fromPosition(
        TextPosition(
          offset: value.length,
        ),
      ),
    );
    if(onChanged != null) {
      onChanged!(value);
    }
  }
}
