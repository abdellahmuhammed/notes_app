import 'package:flutter/material.dart';
import 'package:notes_app/Shared/Constant.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.withOpacity(0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            trailing: IconButton(
              onPressed: () {},
color: Colors.black,
              icon: const Icon(
                Icons.delete,
                size: 24,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Flutter tips',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            subtitle: Text(
              'BuildBuild flutter with any oneBuild flutter with any oneBuild flutter with any oneBuild flutter with any one flutter with any one ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, top: 8, bottom: 24),
            child: Text(
              '8/may/2024',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }
}
