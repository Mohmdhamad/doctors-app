import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';

import '../../../../core/style/text_style.dart';
import '../../../../models/validator.dart';

class CustomTextForm extends StatelessWidget {
  var controller = TextEditingController();
  CustomTextForm({
    super.key,
    this.hintText,
    this.validate,
    this.suffixIcon,
    this.suffix,
    this.prefixIcon,
    this.radius,
    this.color,
    this.isFilled,
  });
  final String? hintText;
  final String? Function(String?)? validate;
  final IconData? suffixIcon;
  final IconData? suffix;
  final IconData? prefixIcon;
  final double? radius;
  bool? isFilled = false;
  Color? color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: InputDecoration(
        filled: isFilled,
        fillColor: color,
        hintText: hintText,
        suffix: Icon(suffix),
        suffixIcon: Icon(suffixIcon),
        prefixIcon: Icon(prefixIcon),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 7,
          horizontal: 20.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius!),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius!),
          borderSide: BorderSide(color: AppColors.grey),
        ),
      ),
      validator: validate,
    );
  }
}
