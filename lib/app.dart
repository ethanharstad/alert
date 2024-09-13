import 'package:alert/app_router.dart';
import 'package:alert/blocs/app_bloc.dart';
import 'package:alert/blocs/event_bloc.dart';
import 'package:alert/blocs/group_bloc.dart';
import 'package:alert/blocs/organization_bloc.dart';
import 'package:alert/repositories/authentication_repository.dart';
import 'package:alert/repositories/event_repository.dart';
import 'package:alert/repositories/organization_repository.dart';
import 'package:alert/repositories/user_access_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  final AuthenticationRepository _authenticationRepository;

  const MyApp({
    required AuthenticationRepository authenticationRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: _authenticationRepository,
        ),
        RepositoryProvider<UserAccessRepository>(
          create: (BuildContext context) => UserAccessRepository(),
        ),
        RepositoryProvider<OrganizationRepository>(
          create: (BuildContext context) => OrganizationRepository(),
        ),
        RepositoryProvider<EventRepository>(
          create: (BuildContext context) => EventRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppBloc>(
            lazy: false,
            create: (_) =>
                AppBloc(authenticationRepository: _authenticationRepository)
                  ..add(const UserSubscriptionRequested()),
          ),
          BlocProvider<OrganizationBloc>(
            create: (BuildContext context) => OrganizationBloc(
              authenticationRepository:
                  context.read<AuthenticationRepository>(),
              organizationRepository: context.read<OrganizationRepository>(),
              userAccessRepository: context.read<UserAccessRepository>(),
            ),
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider<EventBloc>(
              create: (BuildContext context) => EventBloc(
                organizationBloc: context.read<OrganizationBloc>(),
                eventRepository: context.read<EventRepository>(),
              ),
            ),
            BlocProvider<GroupBloc>(
              create: (BuildContext context) => GroupBloc(
                organizationBloc: context.read<OrganizationBloc>(),
              ),
            ),
          ],
          child: BlocListener<AppBloc, AppState>(
            listener: (BuildContext context, AppState state) {
              if (state is Unauthenticated) {
                appRouter.goNamed('login');
              }
            },
            child: MaterialApp.router(
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
                useMaterial3: true,
              ),
              routerConfig: appRouter,
            ),
          ),
        ),
      ),
    );
  }
}
