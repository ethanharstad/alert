import 'package:alert/blocs/organization_bloc.dart';
import 'package:alert/widgets/app_scaffold.dart';
import 'package:alert/widgets/home_tile.dart';
import 'package:alert/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrganizationBloc, OrganizationBlocState>(
      builder: (BuildContext context, OrganizationBlocState state) {
        switch (state) {
          case OrganizationBlocData(
              :final organizations,
              :final selectedOrganization
            ):
            if (selectedOrganization != null) {
              return eventWidget(context, state);
            }
            return Column(
              children: [
                const Text("Select your organization:"),
                ListView(
                  children: [
                    for (final org in organizations)
                      ListTile(
                        title: Text(org.name),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => context
                            .read<OrganizationBloc>()
                            .organizationSelected(org),
                      ),
                  ],
                ),
              ],
            );
          default:
        }
        return const AppScaffold(
          title: 'Loading',
          body: Center(
            child: Column(
              children: [
                CircularProgressIndicator(),
                Text("Loading"),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget eventWidget(BuildContext context, OrganizationBlocData state) {
    return AppScaffold(
      title: state.selectedOrganization!.name,
      bottomNavigationBar: const NavBar(),
      body: GridView.extent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        children: [
          HomeTile(
            color: Colors.red,
            title: 'Lockdown',
            icon: Icons.lock,
            onTap: () => context.goNamed("EditEvent", extra: "lockdown"),
          ),
          HomeTile(
            color: Colors.blue,
            title: 'Secure',
            icon: Icons.front_hand,
            onTap: () => context.goNamed("EditEvent", extra: "secure"),
          ),
          HomeTile(
            color: Colors.orange,
            title: 'Shelter',
            icon: Icons.home,
            onTap: () => context.goNamed("EditEvent", extra: "shelter"),
          ),
          HomeTile(
            color: Colors.green,
            title: 'Evacuate',
            icon: Icons.directions_walk,
            onTap: () => context.goNamed("EditEvent", extra: "evacuate"),
          ),
          HomeTile(
            color: Colors.deepPurpleAccent,
            title: 'Hold',
            icon: Icons.door_front_door,
            onTap: () => context.goNamed("EditEvent", extra: "hold"),
          ),
        ],
      ),
    );
  }
}
