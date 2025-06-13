import 'package:flutter/material.dart';
import 'package:tasks/features/auth/view/screen/login_screen.dart';
import 'package:tasks/features/onboarding/view/widgets/onboarding_builder.dart';
import 'package:tasks/models/onboarding_model.dart';
import 'package:tasks/widgets/functions.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';
import '../../../auth/view/screen/register_screen.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  var boardController = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: onboarding.length,
              physics: BouncingScrollPhysics(),
              controller: boardController,
              itemBuilder: (context, index) {
                return OnboardingBuilder(model: onboarding[index]);
              },
              onPageChanged: (index) {
                if (index == onboarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.teal,
              borderRadius: BorderRadiusDirectional.circular(7.5),
            ),
            child: TextButton(
              onPressed: () {
                if (isLast == true) {
                    navigateAndFinish(context, RegisterScreen());
                } else {
                  boardController.nextPage(
                    duration: Duration(milliseconds: 770),
                    curve: Curves.fastEaseInToSlowEaseOut,
                  );
                }
              },
              child: Text(
                'Get Started',
                style: titleStyle(color: AppColors.white),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          TextButton(
            onPressed: () {
              navigateAndFinish(context, LoginScreen());
            },
            child: Text('Skip', style: hashStyle(textSize: 18.0)),
          ),
        ],
      ),
    );
  }
}
