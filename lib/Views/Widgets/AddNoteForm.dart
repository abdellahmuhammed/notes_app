import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/CustomMaterialButton.dart';
import 'package:notes_app/Views/Widgets/CustomTextFormField.dart';

class AddNoteForm extends StatefulWidget {
  const  AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            label: 'title',
            validateString: 'tittle was missed',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            label: 'time',
            validateString: 'time was missed',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            label: 'content',
            maxLines: 8,
            keyboardType: TextInputType.multiline,
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomMaterialButton(
            text: 'Add',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autoValidateMode = AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}
