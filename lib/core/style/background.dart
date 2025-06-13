import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';

class BackgroundScaffold extends StatelessWidget {
  const BackgroundScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
  });

  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar ?? const SizedBox(),
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(-1.2, -1.2),
            child: _buildBlurredCircle(
              color: AppColors.teal,
              size: 216,
              blurSigma: 269,
              opacity: 0.3,
            ),
          ),
          Align(
            alignment: const Alignment(1.2, 1.2),
            child: _buildBlurredCircle(
              color: AppColors.teal,
              size: 216,
              blurSigma: 269,
              opacity: 0.3,
            ),
          ),
          body,
        ],
      ),
    );
  }

  Widget _buildBlurredCircle({
    required Color color,
    required double size,
    double blurSigma = 50,
    double opacity = 0.2,
  }) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(opacity),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
        child: Container(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
