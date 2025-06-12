import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasks/core/style/colors.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: AppColors.teal,
              radius: 20,
              child: SvgPicture.asset(
                'assets/icons/chat.svg',
                color: AppColors.white,
                height: 20,
                width: 20,
              ),
            ),
          ),
          suffixIcon: Icon(
            Icons.emoji_emotions_outlined,
            color: AppColors.grey,
          ),
          hintText: 'Write a comment...',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: AppColors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: AppColors.teal),
          ),
        ),
      ),
    );
  }
}
