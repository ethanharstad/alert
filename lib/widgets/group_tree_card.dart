import 'package:alert/blocs/group_bloc.dart';
import 'package:flutter/material.dart';

class GroupTreeCard extends StatefulWidget {
  const GroupTreeCard({
    required this.tree,
    super.key,
  });

  final GroupTree tree;

  @override
  State<GroupTreeCard> createState() => _GroupTreeCardState();
}

class _GroupTreeCardState extends State<GroupTreeCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.tree.root!.name),
                if (widget.tree.children.isNotEmpty)
                  IconButton(
                    onPressed: () => setState(() {
                      expanded = !expanded;
                    }),
                    icon: expanded
                        ? const Icon(Icons.expand_less)
                        : const Icon(Icons.expand_more),
                  ),
              ],
            ),
          ),
        ),
        if(expanded)
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(width: 16),
                Flexible(
                  child: Column(
                    children: [
                      for(final subtree in widget.tree.children)
                        GroupTreeCard(tree: subtree),
                    ],
                  ),
                ),
              ],
            ),
      ],
    );
  }
}
