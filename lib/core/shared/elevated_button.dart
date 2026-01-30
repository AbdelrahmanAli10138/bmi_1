import 'package:bmi_1/core/themes/app_themes.dart';
import 'package:bmi_1/core/screens/calc.dart';
import 'package:bmi_1/core/screens/result.dart';
import 'package:flutter/material.dart';

class OnBoardingElevatedButtonWidget extends StatelessWidget {
  const OnBoardingElevatedButtonWidget({super.key});
  final String startingApp = "Get Started";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
      ),
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Calc()));
      },
      child: Text(startingApp, style: TextStyleApp.onBoardingButtonStyle),
    );
  }
}

class CalcElevatedButtonWidget extends StatelessWidget {
  const CalcElevatedButtonWidget({super.key});
  final String startingCalc = "Calculate BMI";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
      ),
      onPressed: () {
        
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Result()));
      },
      child: Text(startingCalc, style: TextStyleApp.calcButtonStyle),
    );
  }
}

class ReCalcElevatedButtonWidget extends StatelessWidget {
  const ReCalcElevatedButtonWidget({super.key});
  final String reStartingCalc = "Calculate BMI Again";

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10),
        ),
      ),
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => Calc()));
      },
      child: Text(reStartingCalc, style: TextStyleApp.ReCalcButtonStyle),
    );
  }
}
