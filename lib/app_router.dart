import 'package:alert/screens/home_screen.dart';
import 'package:alert/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (BuildContext context, GoRouterState state) =>
          const LoginScreen(),
    ),
    GoRoute(
      path: '/',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
  ],
);
