import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';

import '../../../../core/style/text_style.dart';
import '../../../../models/validator.dart';



class DefaultTextForm extends StatelessWidget {
  var controller = TextEditingController();
  DefaultTextForm({super.key, required this.hintText, this.validate , this.suffixIcon,this.suffix});
  final String hintText;
  final String? Function(String?)? validate;
  IconData? suffixIcon;
  IconData? suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffix: Icon(suffix),
        suffixIcon: Icon(suffixIcon),
        contentPadding: const EdgeInsets.symmetric( vertical: 7,horizontal: 20.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: AppColors.grey),
        ),
      ),
      validator: validate,
    );
  }
}
