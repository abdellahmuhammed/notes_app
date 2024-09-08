import 'package:flutter/material.dart';
import 'package:notes_app/Shared/Widgets/CustomTextFormField.dart';

class NoteShowModalBottomSheet extends StatelessWidget {
  const NoteShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child:const  Column(
          children: [
            CustomTextFormField( label: 'Enter',),
            CustomTextFormField( label: 'Enter',),
          ],
        ),
      ),
    );
  }
}
