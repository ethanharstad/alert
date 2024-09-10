import 'package:alert/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class IncidentsScreen extends StatelessWidget {
  const IncidentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Incidents',
      body: Center(
        child: Text('Incidents Screen'),
      ),
    );
  }
}
