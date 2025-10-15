import 'package:ecommerce/controller/forgetpassword/verifycode_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitelauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifycodeControllerImp controller = Get.put(VerifycodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text(
          "27".tr,
          style: Theme.of(
            context,
          ).textTheme.displayLarge!.copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(
          children: [
            CustomTextTitelAuth(text: "28".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuthe(text: "30".tr),
            const SizedBox(height: 35),
            OtpTextField(
              borderRadius: BorderRadius.circular(20),
              fieldWidth: 50,
              numberOfFields: 5,
              borderColor: AppColor.primaryColor,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToResetPassword(verificationCode);
              }, // end onSubmit
            ),

            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
