import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTitleHome extends StatelessWidget {
  final String title;
  const CustomTitleHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        style: TextStyle(fontSize: 18, color: AppColor.primaryColor),
        title,
      ),
    );
  }
}
