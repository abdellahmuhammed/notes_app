import 'package:flutter/material.dart';
import 'package:notes_app/Shared/Widgets/CustomNotesItem.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const CustomNotesView(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Padding(
        padding: EdgeInsets.only(left: 16),
        child: Text('Samoan Notes'),
      ),
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: IconButton(
            style: const ButtonStyle(),
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        )
      ],
    );
  }
}

class CustomNotesView extends StatelessWidget {
  const CustomNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: 5,
      itemBuilder: (context, index) => const CustomNotesItem(),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 8,),
    );
  }
}
