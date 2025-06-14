import 'package:flutter/material.dart';
import 'package:tasks/core/style/background.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/features/onboarding/view/screen/onboarding_screen.dart';
import 'package:tasks/widgets/functions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      navigateAndFinish(context, OnboardingScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      body: Center(
        child: Image.asset('assets/icons/Logo.png'),
      ),
    );
  }
}
