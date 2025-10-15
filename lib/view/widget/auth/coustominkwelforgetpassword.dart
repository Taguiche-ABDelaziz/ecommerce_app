import 'package:flutter/material.dart';

class CoustomInkwelForgetPassword extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CoustomInkwelForgetPassword({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(text, textAlign: TextAlign.end),
    );
  }
}
