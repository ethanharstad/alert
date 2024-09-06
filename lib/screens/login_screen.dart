import 'package:alert/blocs/app_bloc.dart';
import 'package:alert/blocs/login_cubit.dart';
import 'package:alert/repositories/authentication_repository.dart';
import 'package:alert/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (BuildContext context, AppState state) {
        if (state is Ready) {
          context.goNamed('home');
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocProvider(
            create: (BuildContext context) =>
                LoginCubit(context.read<AuthenticationRepository>()),
            child: const LoginForm(),
          ),
        ),
      ),
    );
  }
}
