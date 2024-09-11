import 'package:alert/blocs/event_bloc.dart';
import 'package:alert/widgets/app_scaffold.dart';
import 'package:alert/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alert/models/event.dart';

class IncidentsScreen extends StatelessWidget {
  const IncidentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventBloc, EventBlocState>(
        builder: (BuildContext context, EventBlocState state) {
          return AppScaffold(
            title: 'Incidents',
            bottomNavigationBar: const NavBar(),
            body: switch (state) {
              EventBlocError(:final message) =>
                  Column(
                    children: [
                      const Text("Error loading incidents."),
                      if (message != null) Text(message),
                    ],
                  ),
              EventBlocLoading() =>
              const Center(
                child: CircularProgressIndicator(),
              ),
              EventBlocEmpty() =>
              const Center(
                child: Text("No incidents found."),
              ),
              EventBlocData(:final events) =>
                  ListView(
                    children: [
                      for (final event in events)
                        ListTile(
                          selected: event.isOpen,
                          leading: switch (event.eventType) {
                            'lockdown' => const Icon(Icons.lock),
                            'secure' => const Icon(Icons.front_hand),
                            'shelter' => const Icon(Icons.home),
                            'evacuate' => const Icon(Icons.directions_walk),
                            'hold' => const Icon(Icons.door_front_door),
                            String() => null,
                          },
                          title: event.title != null
                              ? Text(event.title!)
                              : null,
                          subtitle: Text(event.openedAt.toIso8601String()),
                          trailing: getTrailing(event),
                        ),
                    ],
                  ),
            },
          );
        });
  }

  Widget? getTrailing(Event event) {
    if (event.isScheduled) {
      return const Icon(Icons.alarm);
    }
    if(event.isOpen) {
      return const Icon(Icons.notifications_active);
    }
    if(event.isClosed) {
      return const Icon(Icons.check);
    }
  }
}
