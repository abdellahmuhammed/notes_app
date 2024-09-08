import 'package:flutter/material.dart';
import 'package:notes_app/Shared/themes.dart';
import 'package:notes_app/Views/NotesView.dart';

void main(){

  runApp(const NotesApp());

}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   theme: lightThem(),
      routes: {
        NotesView.id : (context)=> const NotesView()
      },
      initialRoute:NotesView.id ,
    );
  }
}
