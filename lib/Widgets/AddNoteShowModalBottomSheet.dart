// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/CustomMaterialButton.dart';
import 'package:notes_app/Widgets/CustomTextFormField.dart';

class AddNoteShowModalBottomSheet extends StatelessWidget {
  const AddNoteShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
           const CustomTextFormField( label: 'title'),
            const  SizedBox(height: 30,),
            const CustomTextFormField( label: 'time'),
            const  SizedBox(height: 20,),
            const CustomTextFormField( label: 'content' ,maxLines: 8, keyboardType: TextInputType.multiline, ),

            const  SizedBox(height: 20,),
            CustomMaterialButton(text: 'Add', onTap: (){})
          ],
        ),
      ),
    );
  }
}
