import 'package:flutter/material.dart';
import 'package:notes_app/Shared/Widgets/CustomTextFormField.dart';

class NoteShowModalBottomSheet extends StatelessWidget {
  const NoteShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),

      ),
      child: Column(
        children: [
          CustomTextFormField(onFieldSubmitted: (String ) {  }, label: 'Enter',),
          CustomTextFormField(onFieldSubmitted: (String ) {  }, label: 'Enter',),
        ],
      ),
    );
  }
}
