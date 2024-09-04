import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const HomeTile(
      {required this.title,
      required this.icon,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
