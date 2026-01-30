import 'package:flutter/material.dart';

class AppColors {
  static Color primary = Color(0xff7876cd);
  static Color secondary = Color(0xff484783);
  static Color titleStyleColor = Color.fromARGB(255, 255, 255, 255);
  static Color subTitleStyleColor = Color(0xF8F9FFE5);
  static Color infoStyleColor = Color(0xff01502E);
  static Color birthDateColor = Color(0xFF333333);
  static Color titleFieldsColor = Color(0xFF333333);
  static Color appName = Color.fromARGB(255, 39, 96, 41);
}

class TextApp {
  static String onBoardingTitleApp =
      """Know Your Body Better,Get Your BMI Score in Less Than a Minute!""";
  static String onBoardingSubTitleApp =
      "It takes just 30 seconds - and your health is worth it!";
  static String information =
      """Lorem ipsum dolor sit amet consectetur. Sagittis interdum dui enim imperdiet sapien cursus velit pharetra. Viverra justo tempor dictum odio. Nisl non dui integer orci nulla eget laoreet tellus. Orci nunc a orci convallis ac orci. Urna auctor at elementum sit ante maecenas ullamcorper rhoncus dictum. Morbi venenatis lectus ultrices euismod. Laoreet purus risus amet enim sagittis ut. Consectetur libero orci urnager dignissi est.""";
}

class TextStyleApp {
  static TextStyle titleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: AppColors.subTitleStyleColor,
  );

  static TextStyle subTitleTextStyle = TextStyle(
    color: AppColors.subTitleStyleColor,
    fontSize: 16,
  );

  static TextStyle onBoardingButtonStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white,
  );
  static TextStyle calcAppName = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w900,
    color: AppColors.appName,
    letterSpacing: 8.0,
  );
  static TextStyle fieldsName = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    color: AppColors.titleFieldsColor,
  );

  static TextStyle calcButtonStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static TextStyle ReCalcButtonStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static TextStyle checkAge = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );
  static TextStyle infoAge = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static TextStyle infoName = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
  static TextStyle information = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bmiCalcResult = TextStyle(
    color: Colors.white,
    fontSize: 35,
    fontWeight: FontWeight.w900,
  );
}
