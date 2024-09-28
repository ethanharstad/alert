import 'package:alert/blocs/event_bloc.dart';
import 'package:alert/models/event.dart';
import 'package:alert/widgets/app_scaffold.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({
    required this.eventId,
    super.key,
  });

  final String eventId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventBloc, EventBlocState>(
      builder: (BuildContext context, EventBlocState state) {
        String title = 'Incident Details';
        Widget body = const SizedBox.shrink();
        switch (state) {
          case EventBlocData(:final events):
            final event = events.firstWhereOrNull(
              (element) => element.id == eventId,
            );
            if (event != null) {
              title = event.title ?? 'Incident Details';
              body = _EventBody(event: event);
              break;
            }
          case EventBlocEmpty():
            body = const Center(
              child: Text('Incident Not Found'),
            );
            break;
          case EventBlocLoading():
          default:
            body = const Center(
              child: CircularProgressIndicator(),
            );
        }
        return AppScaffold(title: title, body: body);
      },
    );
  }
}

class _EventBody extends StatelessWidget {
  const _EventBody({
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(event.eventType),
          Text(
            'Start Time: ${DateFormat.yMd().add_jms().format(event.openedAt)}',
          ),
          if(event.closedAt != null)
            Text(
              'End Time: ${DateFormat.yMd().add_jms().format(event.closedAt!)}',
            ),
          if(event.notes != null)
            Text(event.notes!),
        ],
      ),
    );
  }
}
