import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColor.black,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: AppColor.black,
    ),
    bodyLarge: TextStyle(height: 2, color: AppColor.grey, fontSize: 15),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArebic = ThemeData(
  fontFamily: "Cariro",
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColor.black,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
      color: AppColor.black,
    ),
    bodyLarge: TextStyle(height: 2, color: AppColor.grey, fontSize: 15),
  ),
  primarySwatch: Colors.blue,
);
