// ignore_for_file: file_names
import 'package:flutter/material.dart';

Widget buildText({
  required String text ,
  double fontSize = 25,
  FontWeight  fontWeight = FontWeight.bold,
  Color color = Colors.black,
  int? maxLines,
  TextOverflow? overflow,



}) {
  return Text(
    maxLines:maxLines ,
    overflow: overflow,
    text,
    style:  TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color
    ),
  );
}