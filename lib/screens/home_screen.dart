import 'package:alert/widgets/home_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.extent(
          maxCrossAxisExtent: 300,
          children: [
            HomeTile(
              title: 'Lockdown',
              icon: Icons.lock,
              onTap: () {},
            ),
            HomeTile(
              title: 'Secure',
              icon: Icons.front_hand,
              onTap: () {},
            ),
            HomeTile(
              title: 'Shelter',
              icon: Icons.home,
              onTap: () {},
            ),
            HomeTile(
              title: 'Evacuate',
              icon: Icons.directions_walk,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
