import 'package:bmi_1/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

class InformationUser extends StatelessWidget {
  const InformationUser({
    super.key,
    required this.checkAge,
    required this.infoAge,
  });

  final String checkAge;
  final String infoAge;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.infoStyleColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(checkAge, style: TextStyleApp.checkAge),
            ),
            const SizedBox(height: 6),
            Align(
              alignment: Alignment.topLeft,
              child: Text(infoAge, style: TextStyleApp.infoAge),
            ),
            const SizedBox(height: 6),
            Text(TextApp.information, style: TextStyleApp.information),
          ],
        ),
      ),
    );
  }
}
