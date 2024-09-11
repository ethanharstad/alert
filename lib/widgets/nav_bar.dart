import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class _Destination {
  final String label;
  final Widget icon;
  final String routeName;

  const _Destination({
    required this.label,
    required this.icon,
    required this.routeName,
  });
}

const destinations = [
  _Destination(
    label: "Home",
    icon: Icon(Icons.home),
    routeName: "home",
  ),
  _Destination(
    label: "Incidents",
    icon: Icon(Icons.format_list_bulleted),
    routeName: "incidents",
  ),
  _Destination(
    label: "Settings",
    icon: Icon(Icons.settings),
    routeName: "settings",
  ),
];

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _computeSelected(context),
      onDestinationSelected: (index) => _onDestinationSelected(context, index),
      destinations: [
        for (final destination in destinations)
          NavigationDestination(
            icon: destination.icon,
            label: destination.label,
          ),
      ],
    );
  }

  void _onDestinationSelected(BuildContext context, int index) {
    final destination = destinations[index];
    context.goNamed(destination.routeName);
  }

  int _computeSelected(BuildContext context) {
    final String location = GoRouterState.of(context).name ?? '';
    final match = destinations
        .indexWhere((final destination) => destination.routeName == location);
    return match < 0 ? 0 : match;
  }
}
