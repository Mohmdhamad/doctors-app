import 'package:flutter/material.dart';
import 'package:tasks/models/doctors_model.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

Widget docCardBuilder (DoctorsModel model)=>
    SizedBox(
      width: 120,
      height: 155,
      child: Card(
        child: Column(
          spacing: 3,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0),
          child: Row(
            children: [
              Icon(Icons.favorite_border_outlined,
                size: 17,
                color: AppColors.grey,
              ),
              Spacer(),
              Icon(Icons.star,
                size: 17,
                color: AppColors.amber,
              ),
              Text(' 3.7',
                style: titleStyle(textSize: 15.0),
              ),
            ],
          ),
        ),
        CircleAvatar(
          backgroundImage: AssetImage(model.image),
          radius: 33,
        ),
        Text(model.name,
          style: titleStyle(textSize: 14),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('\$ ',
              style: titleStyle(
                color: AppColors.teal,
                textSize: 14
              ),
            ),
            Text(model.salary,
              style: hashStyle(
                textSize: 13
              ),),
          ],
        ),
      ],
        ),
      ),
    );