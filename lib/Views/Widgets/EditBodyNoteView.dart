import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/CustomMaterialButton.dart';
import 'package:notes_app/Views/Widgets/CustomTextFormField.dart';

class EditBodyNoteView extends StatelessWidget {
  const EditBodyNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
          children: [
            const CustomTextFormField( label: 'title'),
            const  SizedBox(height: 20,),
            const CustomTextFormField( label: 'content' ,maxLines: 8, keyboardType: TextInputType.multiline, ),
            const  SizedBox(height: 30,),
            CustomMaterialButton(text: 'Edit', onTap: (){})
          ],
        ),
    );

  }
}
