import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtomLang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtomLang({super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,

        color: AppColor.primaryColor,
        child: Text(
          textbutton,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
