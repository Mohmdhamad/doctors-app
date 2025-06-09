import 'package:flutter/material.dart';
import 'package:tasks/features/onboarding/view/widgets/app_bar.dart';
import 'package:tasks/features/onboarding/view/widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: onboardingAppBar(),
      body: OnboardingBody(),
    );
  }
}
