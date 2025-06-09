import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import '../../../../core/style/app_text.dart';
import '../../../../core/style/text_style.dart';

AppBar onboardingAppBar() {
  return AppBar(
    actions: [
      ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor:WidgetStatePropertyAll(AppColors.black),
        ),
        child: Row(
          spacing: 15.0,
          children: [
            Text('Skip',),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
      SizedBox(width: 15.0,)
    ],
  );
}