import 'package:flutter/material.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/models/onboarding_model.dart';
class OnboardingBuilder extends StatelessWidget{
  OnboardingBuilder({super.key,required this.model,});
  OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(model.image,),
          radius: 150.0,
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          model.title,
          style: titleStyle(),
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          model.description,
          style: hashStyle(),
        ),
      ],
    );

  }
}
