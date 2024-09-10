import 'package:alert/widgets/app_drawer.dart';
import 'package:alert/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Widget? bottomNavigationBar;

  const AppScaffold({
    required this.title,
    required this.body,
    this.bottomNavigationBar,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(Icons.person_sharp),
            );
          })
        ],
      ),
      endDrawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: body,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
