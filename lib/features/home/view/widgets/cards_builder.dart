import 'package:flutter/material.dart';
import 'package:tasks/models/doctors_model.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

Widget cardsBuilder(DoctorsModel model)=>Card(
  child: Column(
    children: [
      Container(
        height: 170,
        width: 175.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.vertical(
              top: Radius.circular(10)),
          image:DecorationImage(
            image: AssetImage(model.image),
          fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Text(model.name,
        style: titleStyle(),
      ),
      Text(model.major,
        style: hashStyle(),),
      Row(
        children: [
          Icon(
            Icons.star,
            color: AppColors.amber,
            size: 20,
          ),
          Icon(
            Icons.star,
            color: AppColors.amber,
            size: 20,
          ),
          Icon(
            Icons.star,
            color: AppColors.amber,
            size: 20,
          ),
          Icon(
            Icons.star,
            color: AppColors.amber,
            size: 20,
          ),
          Icon(
            Icons.star,
            color: AppColors.amber,
            size: 20,
          ),

        ],
      ),
    ],
  ),
);
