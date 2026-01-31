import 'package:bmi_1/core/shared/elevated_button.dart';
import 'package:bmi_1/core/themes/app_themes.dart';
import 'package:bmi_1/core/widgets/information_user.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});
  final String checkAge = "Under Weight";
  final String infoAge = "Your BMI is less than 18.5";
  final String userName = "Samy Call";
  final String userAge = "A 23 years old male.";
  final String bmiCalc = "16.5";
  final String userHeight = "180 cm";
  final String userWeight = "70 kg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),

      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 350,
                  height: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 12,
                                  top: 20,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      userName,
                                      style: TextStyleApp.infoName,
                                    ),
                                    Text(userAge, style: TextStyleApp.infoAge),
                                    const SizedBox(height: 15),
                                    Text(
                                      bmiCalc,
                                      style: TextStyleApp.bmiCalcResult,
                                    ),
                                    Text(
                                      "BMI Calc",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(height: 14),
                                    //! this widget to show the vertical divider in row widget.
                                    IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          Text(
                                            "$userHeight\nHeight",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          VerticalDivider(width: 10),
                                          const SizedBox(width: 8),
                                          Text(
                                            "$userWeight\n Weight",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            SizedBox(
                              width: 85,
                              height: 280,

                              child: Image.asset("assets/body.png"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                //! Information User Widget.
                child: InformationUser(checkAge: checkAge, infoAge: infoAge),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 50,
                width: 300,
                child: ReCalcElevatedButtonWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
