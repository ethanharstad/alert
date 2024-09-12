import 'package:alert/blocs/app_bloc.dart';
import 'package:alert/screens/event_edit_screen.dart';
import 'package:alert/screens/home_screen.dart';
import 'package:alert/screens/incidents_screen.dart';
import 'package:alert/screens/login_screen.dart';
import 'package:alert/screens/organization_detail_screen.dart';
import 'package:alert/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  redirect: (BuildContext context, GoRouterState state) {
    if (context.read<AppBloc>().state is Ready) return null;
    return '/login';
  },
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/login',
      name: 'login',
      redirect: (BuildContext context, GoRouterState state) {
        final appState = context.read<AppBloc>().state;
        if (appState is Ready) return '/';
        return null;
      },
      builder: (BuildContext context, GoRouterState state) =>
          const LoginScreen(),
    ),
    GoRoute(
      path: '/',
      name: 'home',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
      routes: [
        GoRoute(
          path: 'settings',
          name: 'settings',
          builder: (BuildContext context, GoRouterState state) =>
              const SettingsScreen(),
        ),
        GoRoute(
          path: 'incidents',
          name: 'incidents',
          builder: (BuildContext context, GoRouterState state) =>
              const IncidentsScreen(),
        ),
        GoRoute(
          path: 'organization',
          name: 'organization',
          builder: (BuildContext context, GoRouterState state) =>
              const OrganizationDetailScreen(),
        ),
        GoRoute(
          path: 'editEvent',
          name: 'EditEvent',
          builder: (BuildContext context, GoRouterState state) =>
              const EventEditScreen(),
        ),
      ],
    ),
  ],
);
