import 'package:alert/blocs/group_bloc.dart';
import 'package:alert/blocs/organization_bloc.dart';
import 'package:alert/widgets/app_scaffold.dart';
import 'package:alert/widgets/group_tree_card.dart';
import 'package:alert/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrganizationDetailScreen extends StatelessWidget {
  const OrganizationDetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrganizationBloc, OrganizationBlocState>(
      builder: (BuildContext context, OrganizationBlocState state) {
        String title = 'Organization Details';
        Widget body = const Center(
          child: CircularProgressIndicator(),
        );
        switch (state) {
          case OrganizationBlocData(:final selectedOrganization):
            if (selectedOrganization != null) {
              title = selectedOrganization.name;
              body = groupWidget(context);
              break;
            }
          default:
        }
        return AppScaffold(
          title: title,
          bottomNavigationBar: const NavBar(),
          body: body,
        );
      },
    );
  }

  Widget groupWidget(BuildContext context) {
    return BlocBuilder<GroupBloc, GroupBlocState>(
        builder: (BuildContext context, GroupBlocState state) {
      Widget body = const Center(
        child: Text('No groups found.'),
      );
      switch (state) {
        case GroupBlocError(:final message):
          body = Center(
            child: Column(
              children: [
                const Text('Error loadings groups!'),
                if (message != null) Text(message),
              ],
            ),
          );
          break;
        case GroupBlocLoading():
          body = const Center(
            child: CircularProgressIndicator(),
          );
          break;
        case GroupBlocData(:final tree):
          body = ListView(
            children: [
              for (final groupTree in tree!.children)
                GroupTreeCard(tree: groupTree),
            ],
          );
          break;
        default:
      }
      return body;
    });
  }
}
