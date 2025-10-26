import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomButtonAppbar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  final IconData? icondata;
  final bool? active;
  const CustomButtonAppbar({
    Key? key,
    required this.onPressed,
    required this.textbutton,
    required this.icondata,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icondata,
            color: active == true ? AppColor.primaryColor : AppColor.grey,
          ),
          Text(
            textbutton,
            style: TextStyle(
              color: active == true ? AppColor.primaryColor : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
