import 'package:alert/app_router.dart';
import 'package:alert/blocs/app_bloc.dart';
import 'package:alert/repositories/authentication_repository.dart';
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
    return RepositoryProvider.value(
      value: _authenticationRepository,
      child: BlocProvider(
        lazy: false,
        create: (_) =>
            AppBloc(authenticationRepository: _authenticationRepository)
              ..add(const UserSubscriptionRequested()),
        child: BlocListener<AppBloc, AppState>(
          listener: (BuildContext context, AppState state) {
            if(state is Unauthenticated) {
              appRouter.goNamed('login');
            }
          },
          child: MaterialApp.router(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            routerConfig: appRouter,
          ),
        ),
      ),
    );
  }
}
