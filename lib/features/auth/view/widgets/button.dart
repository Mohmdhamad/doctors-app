import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/home/view/screen/home_screen.dart';
import 'package:tasks/widgets/item_builder.dart';

import '../../../../widgets/functions.dart';

Widget defaultButton({context, required Widget screen,required String text})=>SizedBox(
  width: double.infinity,
  height: 40.0,
  child: ElevatedButton(onPressed: (){
    navigateAndFinish(context, screen);
  },
    style: ButtonStyle(
      backgroundColor:WidgetStatePropertyAll(AppColors.teal),
    ),
    child: Text(text,
  style: titleStyle( color: AppColors.white,
  textSize: 22.0),
  ),),
);