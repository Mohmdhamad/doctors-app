import 'package:flutter/material.dart';
import 'package:tasks/features/home/view/screen/home_screen.dart';
import 'package:tasks/features/onboarding/view/screen/onboarding_screen.dart';

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  Widget build(BuildContext context){
    return MaterialApp(
      home: OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}