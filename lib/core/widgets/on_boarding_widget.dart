import 'package:bmi_1/core/shared/elevated_button.dart';
import 'package:bmi_1/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgets extends StatelessWidget {
  const OnBoardingWidgets({
    super.key,
    required this.sizedBoxHeight,
    required this.textOnboarding,
    required this.subTitleOnboarding,
  });

  final double sizedBoxHeight;
  final String textOnboarding;
  final String subTitleOnboarding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 200),
        Center(child: Image.asset("assets/logo.png")),
        SizedBox(height: sizedBoxHeight),
        Container(
          decoration: BoxDecoration(
            color: MyAppColors.primary,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.all(16),
          height: 300,
          width: double.infinity,
          child: Column(
            children: [
              //! TextWidget
              Text(textOnboarding, style: TextStyleApp.titleTextStyle),
              SizedBox(height: 10.0),
              //! Text Widget
              Text(subTitleOnboarding, style: TextStyleApp.subTitleTextStyle),
              SizedBox(height: 20.0),
              Divider(color: Colors.white70),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 300,
                child: OnBoardingElevatedButtonWidget(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
