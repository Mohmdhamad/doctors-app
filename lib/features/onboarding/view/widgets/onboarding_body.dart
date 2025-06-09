import 'package:flutter/material.dart';
import 'package:tasks/features/onboarding/view/widgets/onboarding_builder.dart';
import 'package:tasks/models/onboarding_model.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
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
                itemBuilder: (context,index){
              return OnboardingBuilder(model: onboarding[index]);
            }),
          )
        ],
      ),
    );
  }
}
