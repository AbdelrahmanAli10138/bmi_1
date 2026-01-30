import 'package:bmi_1/core/shared/elevated_button.dart';
import 'package:bmi_1/core/themes/app_themes.dart';
import 'package:bmi_1/core/widgets/information_user.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});
  final String checkAge = "Under Weight";
  final String infoAge = "Your BMI is less than 18.5";

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
                    color: MyAppColors.primary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            // Container(
                            //   width: 100,
                            //   height: 100,
                            //   decoration: BoxDecoration(color: Colors.black),
                            // ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Container(
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
