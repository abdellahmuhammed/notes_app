import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/CustomMaterialButton.dart';
import 'package:notes_app/Widgets/CustomTextFormField.dart';

class AddNoteShowModalBottomSheet extends StatelessWidget {
  const AddNoteShowModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Column(
          children: [
           const CustomTextFormField( label: 'title'),
            const  SizedBox(height: 20,),
          const  Expanded(child:   CustomTextFormField( label: 'content' ,maxLines: 8, minLines: 6, keyboardType: TextInputType.multiline, )),
            const   Spacer(),
            CustomMaterialButton(text: 'Add', onTap: (){})
          ],
        ),
      ),
    );
  }
}
