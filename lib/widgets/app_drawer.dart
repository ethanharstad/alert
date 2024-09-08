import 'package:alert/blocs/app_bloc.dart';
import 'package:alert/blocs/user_cubit.dart';
import 'package:alert/repositories/authentication_repository.dart';
import 'package:alert/widgets/user_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          BlocProvider(
            lazy: false,
            create: (_) => UserCubit(authRepository: context.read<AuthenticationRepository>()),
            child: const UserProfileHeader(),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () => context.read<AppBloc>().add(const LogOutPressed()),
          ),
        ],
      ),
    );
  }
}
