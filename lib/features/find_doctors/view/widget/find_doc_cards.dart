import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/auth/view/widgets/button.dart';
import 'package:tasks/models/doctors_model.dart';
import 'package:tasks/widgets/functions.dart';

import '../../../book/view/screen/book_screen.dart';

Widget findDocCardBuilder(DoctorsModel model,context)=>SizedBox(
  height: 200.0,
  width: double.infinity,
  child: Card(
    child: Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        spacing: 5,
        children: [
          Row(
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
                  spacing: 5,
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
                    style: bodyStyle(
                      color: AppColors.appColor,
                    ),
                    ),
                    Text(model.exYears,
                      style: hashStyle(),
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle,
                          size: 20.0,
                            color: AppColors.appColor,
                          ),
                        SizedBox(width: 5,),
                        Text(model.percent,
                          style: hashStyle(),
                        ),
                        SizedBox(width: 15.0,),
                        Icon(Icons.circle,
                          size: 20.0,
                          color: AppColors.appColor,
                        ),
                        SizedBox(width: 5,),
                        Text(model.exYears,
                          style: hashStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text('Next Available',
                  style: titleStyle(
                    textSize: 17.0,
                    color: AppColors.appColor,
                  ),
                  ),
                  SizedBox(height: 5,),
                  Text(model.nextAvailable,
                  style: hashStyle(),
                  ),
                ],
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextButton(onPressed: (){
                  navigateTo(context, BookScreen(),);
                },
                  child: Text('Book Now',
                  style: bodyStyle(
                    color: AppColors.white,
                  ),
                  ),

                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
);
