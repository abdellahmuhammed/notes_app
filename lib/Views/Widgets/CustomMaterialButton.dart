// ignore_for_file: file_names
//Custom Material Button To Send Data from Login screen to Home screen or from Register Screen to home screen
import 'package:flutter/material.dart';
import 'package:notes_app/Shared/Constant.dart';

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final Color color ;
  final double minWidth;
  final double height;
  final double radius;
  final VoidCallback onTap;
  final bool isLoading;

  const CustomMaterialButton({
    super.key,
    required this.text,
    this.minWidth = double.infinity,
    this.height = 50,
    this.radius = 10,
    required this.onTap,
     this.color = kPrimaryColor,  this.isLoading=false,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      height:height ,
      minWidth: minWidth,
      color: color,
      onPressed:onTap ,
      child: isLoading ?const  CircularProgressIndicator(color: Colors.blue , strokeWidth: 3,strokeCap: StrokeCap.butt,): Text( text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
