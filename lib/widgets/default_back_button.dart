import 'package:flutter/material.dart';

import '../core/style/colors.dart';

Widget defaultBackButton(context)=>Padding(
  padding: const EdgeInsets.symmetric(
    horizontal: 10,vertical:7.0,
  ),
  child: FloatingActionButton(
    onPressed: (){
      Navigator.pop(context);
    },
    mini: true,
    backgroundColor: AppColors.white,
    foregroundColor: AppColors.black,
    child: Icon(Icons.arrow_back_ios),),
);


