import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16,),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 24,
                ),),
            title: Text(
              'Flutter tips',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            subtitle: Text(
              'Build flutter with any one ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(right: 24, top: 16, bottom: 16),
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
