import 'package:flutter/material.dart';
import 'package:tasks/core/style/background.dart';
import 'package:tasks/features/home/view/widgets/bottom_nav.dart';
import 'package:tasks/features/home/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      body: HomeBody(),
      bottomNavigationBar: bottomNav(),
    );
  }
}
