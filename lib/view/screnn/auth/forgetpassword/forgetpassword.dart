import 'package:ecommerce/controller/forgetpassword/forgetpassword_controller.dart';
import 'package:ecommerce/core/class/statusrquest.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:ecommerce/view/widget/auth/custombuttomauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitelauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text(
          "24".tr,
          style: Theme.of(
            context,
          ).textTheme.displayLarge!.copyWith(color: AppColor.grey),
        ),
      ),
      body: GetBuilder<ForgetPasswordControllerImp>(
        builder: (controller) =>
            controller.statusRequest == StatusRequest.loading
            ? Center(child: Text("Loading....."))
            : Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Form(
                  key: controller.formstate,
                  child: ListView(
                    children: [
                      CustomTextTitelAuth(text: "25".tr),
                      const SizedBox(height: 10),
                      CustomTextBodyAuthe(text: "11".tr),
                      const SizedBox(height: 35),
                      CustomTextFormAuth(
                        isNumbe: false,
                        obscureText: false,
                        valid: (val) {
                          return validInput(val!, 5, 100, "email");
                        },
                        hintText: "13".tr,
                        labeltext: "12".tr,
                        mycontroller: controller.email,
                        iconData: Icons.email_outlined,
                      ),
                      CustomButtomAuth(
                        text: "26".tr,
                        onPressed: () {
                          controller.checkemail();
                        },
                      ),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
