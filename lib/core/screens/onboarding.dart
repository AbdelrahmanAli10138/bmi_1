import 'package:bmi_1/core/themes/app_themes.dart';
import 'package:bmi_1/core/widgets/on_boarding_widget.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  final double sizedBoxHeight = 10.0;
  final double sizedBoxWidth = 10.0;

  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: OnBoardingWidgets(
            sizedBoxHeight: sizedBoxHeight,
            textOnboarding: TextApp.onBoardingTitleApp,
            subTitleOnboarding: TextApp.onBoardingSubTitleApp,
          ),
        ),
      ),
    );
  }
}
