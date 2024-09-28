import 'package:alert/blocs/event_bloc.dart';
import 'package:alert/models/event.dart';
import 'package:alert/widgets/app_scaffold.dart';
import 'package:alert/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventBloc, EventBlocState>(
        builder: (BuildContext context, EventBlocState state) {
      return AppScaffold(
        title: 'Incidents',
        bottomNavigationBar: const NavBar(),
        body: switch (state) {
          EventBlocError(:final message) => Column(
              children: [
                const Text("Error loading incidents."),
                if (message != null) Text(message),
              ],
            ),
          EventBlocLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          EventBlocEmpty() => const Center(
              child: Text("No incidents found."),
            ),
          EventBlocData(:final events) => ListView.builder(
              itemCount: events.length,
              itemBuilder: (BuildContext context, int index) {
                final event = events[index];
                return ListTile(
                  key: Key(event.id!),
                  isThreeLine: event.isClosed,
                  selected: event.isOpen,
                  leading: switch (event.eventType) {
                    'lockdown' => const Icon(Icons.lock),
                    'secure' => const Icon(Icons.front_hand),
                    'shelter' => const Icon(Icons.home),
                    'evacuate' => const Icon(Icons.directions_walk),
                    'hold' => const Icon(Icons.door_front_door),
                    String() => null,
                  },
                  title: event.title != null ? Text(event.title!) : null,
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.call_made),
                          Text(DateFormat.yMd()
                              .add_jms()
                              .format(event.openedAt)),
                        ],
                      ),
                      if (event.closedAt != null)
                        Row(
                          children: [
                            const Icon(Icons.call_received),
                            Text(DateFormat.yMd()
                                .add_jms()
                                .format(event.closedAt!)),
                          ],
                        ),
                    ],
                  ),
                  trailing: getTrailing(event),
                  onTap: () => context.goNamed(
                    'eventDetail',
                    pathParameters: {
                      'eventId': event.id!,
                    },
                  ),
                );
              },
            ),
        },
      );
    });
  }

  Widget? getTrailing(Event event) {
    if (event.isScheduled) {
      return const Icon(Icons.alarm);
    }
    if (event.isOpen) {
      return const Icon(Icons.notifications_active);
    }
    if (event.isClosed) {
      return const Icon(Icons.check);
    }
    return null;
  }
}
