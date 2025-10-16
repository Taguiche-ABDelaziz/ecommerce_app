import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:ecommerce/view/widget/auth/custombuttomauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitelauth.dart';
import 'package:ecommerce/controller/forgetpassword/resetpassword.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text(
          "31".tr,
          style: Theme.of(
            context,
          ).textTheme.displayLarge!.copyWith(color: AppColor.grey),
        ),
      ),
      body: GetBuilder<ResetPasswordControllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  CustomTextTitelAuth(text: "32".tr),
                  const SizedBox(height: 15),
                  CustomTextBodyAuthe(text: "33".tr),
                  const SizedBox(height: 35),
                  CustomTextFormAuth(
                    isNumbe: false,
                    obscureText: controller.isshowpassword,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    valid: (val) {
                      return validInput(val!, 5, 100, "14".tr);
                    },
                    labeltext: "15".tr,
                    hintText: "14".tr,
                    mycontroller: controller.password,
                    iconData: Icons.lock_outlined,
                  ),
                  CustomTextFormAuth(
                    isNumbe: false,
                    obscureText: controller.isshowpassword,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    valid: (val) {
                      return validInput(val!, 5, 100, "14".tr);
                    },
                    labeltext: "15".tr,
                    hintText: "35".tr,
                    mycontroller: controller.repassword,
                    iconData: Icons.lock_outlined,
                  ),
                  CustomButtomAuth(
                    text: "34".tr,
                    onPressed: () {
                      controller.goToUccesResetPassword();
                    },
                  ),
                  SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
