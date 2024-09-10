import 'package:alert/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Settings',
      body: Center(
        child: Text('Settings Screen'),
      ),
    );
  }
}
