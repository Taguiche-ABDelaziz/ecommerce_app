import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  final bool isNumbe ;
  final bool obscureText ;
  final void Function()? onTapIcon;
  const CustomTextFormAuth({
    super.key,
    this.onTapIcon,
    required this.hintText,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller, 
    required this.valid, 
    required this.isNumbe,
     required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        keyboardType: isNumbe ? TextInputType.numberWithOptions(decimal: true) : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(
            margin: EdgeInsets.symmetric(horizontal: 9),
            child: Text(labeltext),
          ),
          suffixIcon: InkWell( onTap: onTapIcon, child: Icon(iconData) ,),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
