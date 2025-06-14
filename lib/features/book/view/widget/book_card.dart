import 'package:flutter/material.dart';
import 'package:tasks/models/doctors_model.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

Widget bookCardBuilder(DoctorsModel model)=>SizedBox(
  height: 120.0,
  width: double.infinity,
  child: Card(
    child: Padding(
      padding: const EdgeInsets.all(9.0),
      child: Row(
        spacing: 10.0,
        children: [
          Container(
            height: 120.0,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(model.image),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(model.name,
                      style: titleStyle(),
                    ),
                    Spacer(),
                    Icon(
                      model.isFav ? Icons.favorite : Icons.favorite_border_outlined,
                      color: model.isFav ? AppColors.red : AppColors.grey,
                    ),
                  ],
                ),
                Text(model.major,
                  style: hashStyle(),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.star,
                      size: 20.0,
                      color: AppColors.amber,
                    ),
                    Icon(Icons.star,
                      size: 20.0,
                      color: AppColors.amber,
                    ),
                    Icon(Icons.star,
                      size: 20.0,
                      color: AppColors.amber,
                    ),
                    Icon(Icons.star,
                      size: 20.0,
                      color: AppColors.amber,
                    ),
                    Icon(Icons.star,
                      size: 20.0,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ),
);