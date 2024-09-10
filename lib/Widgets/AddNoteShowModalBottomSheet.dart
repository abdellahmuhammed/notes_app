// ignore_for_file: file_names
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/CustomMaterialButton.dart';
import 'package:notes_app/Widgets/CustomTextFormField.dart';

class AddNoteShowModalBottomSheet extends StatefulWidget {
  const AddNoteShowModalBottomSheet({super.key});

  @override
  State<AddNoteShowModalBottomSheet> createState() => _AddNoteShowModalBottomSheetState();
}

class _AddNoteShowModalBottomSheetState extends State<AddNoteShowModalBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
   AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title , content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode:autoValidateMode ,
          child: Column(
            children: [
              CustomTextFormField(
                label: 'title',
                validateString: 'tittle was missed',
               onSaved: (value){
                 title = value;
               },
             ),
              const  SizedBox(height: 30,),
               CustomTextFormField(
                label: 'time' ,
                validateString: 'time was missed',
                onSaved: (value){
                  title = value;
                },
              ),
              const  SizedBox(height: 20,),
               CustomTextFormField(
                 onFieldSubmitted: (value){
                   log(value.toString());
                 },
                label: 'content' ,
                maxLines: 8,
                keyboardType: TextInputType.multiline,
                onSaved: (value){
                  title = value;
                },
              ),
              const  SizedBox(height: 20,),
              CustomMaterialButton(text: 'Add',
                  onTap: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }else{
                  autoValidateMode = AutovalidateMode.always;
              }}),
            ],
          ),
        ),
      ),
    );
  }
}
