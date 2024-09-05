import 'package:alert/widgets/app_scaffold.dart';
import 'package:alert/widgets/home_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Home',
      body: GridView.extent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,

        children: [
          HomeTile(
            color: Colors.red,
            title: 'Lockdown',
            icon: Icons.lock,
            onTap: () {},
          ),
          HomeTile(
            color: Colors.blue,
            title: 'Secure',
            icon: Icons.front_hand,
            onTap: () {},
          ),
          HomeTile(
            color: Colors.orange,
            title: 'Shelter',
            icon: Icons.home,
            onTap: () {},
          ),
          HomeTile(
            color: Colors.green,
            title: 'Evacuate',
            icon: Icons.directions_walk,
            onTap: () {},
          ),
          HomeTile(
            color: Colors.deepPurpleAccent,
            title: 'Hold',
            icon: Icons.door_front_door,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
