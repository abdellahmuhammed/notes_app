// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:notes_app/Shared/Constant.dart';

class CustomTextFormField extends StatelessWidget {
  final GlobalKey<FormState>? formKey;
  final String label;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? passwordSecure;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final double radius;
  final int maxLines;
  final void Function(String?)? onSaved;
  final String validateString;

  const CustomTextFormField({
    super.key,
    this.formKey,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.passwordSecure = false,
    this.keyboardType,
    this.onChanged,
     this.onFieldSubmitted,
    this.radius =10,
    this.maxLines = 1,
    this.onSaved,
    this.validateString = 'field is missed'
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: passwordSecure!,
      maxLines:maxLines,
        cursorColor:kPrimaryColor,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
        label: Text(label, maxLines: 1 ,  overflow: TextOverflow.ellipsis , ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon
      ),
      onFieldSubmitted: onFieldSubmitted,
      validator: (value){
        return _buildValidate(value , validateString);
      },
    );
  }

}

String? _buildValidate(String? value , String validateString ) {
  if(value?.isEmpty ?? true){
    return validateString;
  } else{
    return null;
  }
}