import 'package:alert/blocs/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserCubitState>(
        builder: (BuildContext context, UserCubitState state) {
      switch (state) {
        case UserStateData(:final profile):
          return UserAccountsDrawerHeader(
            accountName: Text(profile.name),
            accountEmail: Text(profile.email),
            currentAccountPicture: CircleAvatar(
              child: Text(profile.name.split(" ").map((x) => x[0]).join()),
            ),
          );
        case UserStateEmpty():
          return const DrawerHeader(child: Text('No User Profile'));
        case UserStateLoading():
          return const DrawerHeader(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        case UserStateError(:final message):
          return DrawerHeader(
            child: Column(
              children: [
                Text(
                  'Error Loading Profile',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (message != null) Text(message),
              ],
            ),
          );
      }
    });
  }
}
