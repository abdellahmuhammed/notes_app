// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Shared/component.dart';
import 'package:notes_app/Views/Widgets/CustomMaterialButton.dart';
import 'package:notes_app/Views/Widgets/CustomTextFormField.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/NoteModel.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle, time;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(height: 35,),
          CustomTextFormField(
            label: 'title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          // CustomTextFormField(
          //   label: 'time',
          //   validateString: 'time was missed',
          //   onSaved: (value) {
          //     time = value;
          //   },
          // ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            label: 'content',
            maxLines: 8,
            keyboardType: TextInputType.multiline,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomMaterialButton(
                isLoading: state is AddNoteLoadingState,
                text:  'Add' ,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    NoteModel noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    formKey.currentState!.save();
                    noteModel.save();
                    buildScaffoldMessage(context, message: 'Added successfully');
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
