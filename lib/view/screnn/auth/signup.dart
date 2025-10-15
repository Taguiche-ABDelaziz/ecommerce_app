import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/class/statusrquest.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/alertexitapp.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:ecommerce/view/widget/auth/custombuttomauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtextsignin.dart';
import 'package:ecommerce/view/widget/auth/customtexttitelauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text(
          "17".tr,
          style: Theme.of(
            context,
          ).textTheme.displayLarge!.copyWith(color: AppColor.grey),
        ),
      ),
      body: PopScope(
        canPop: false, // تمنع الرجوع مباشرة
        // ignore: deprecated_member_use
        onPopInvoked: (didPop) {
          if (!didPop) {
            alertExitApp();
          }
        },
        child: GetBuilder<SignUpControllerImp>(
          builder: (controller) =>
              controller.statusRequest == StatusRequest.loading
              ? Center(child: Text("Loading ...."))
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
                            return validInput(val!, 5, 100, "username");
                          },
                          labeltext: "19".tr,
                          hintText: "20".tr,
                          mycontroller: controller.username,
                          iconData: Icons.person_outlined,
                        ),
                        CustomTextFormAuth(
                          isNumbe: true,
                          obscureText: false,
                          valid: (val) {
                            return validInput(val!, 5, 100, "phone");
                          },
                          labeltext: "21".tr,
                          hintText: "22".tr,
                          mycontroller: controller.phone,
                          iconData: Icons.phone_outlined,
                        ),
                        CustomTextFormAuth(
                          isNumbe: false,
                          obscureText: false,
                          valid: (val) {
                            return validInput(val!, 5, 100, "email");
                          },
                          labeltext: "12".tr,
                          hintText: "13".tr,
                          mycontroller: controller.email,
                          iconData: Icons.email_outlined,
                        ),
                        GetBuilder<SignUpControllerImp>(
                          builder: (controller) => CustomTextFormAuth(
                            isNumbe: false,
                            obscureText: controller.isshowpassword,
                            onTapIcon: () {
                              controller.showPassword();
                            },
                            valid: (val) {
                              return validInput(val!, 5, 100, "password");
                            },
                            labeltext: "14".tr,
                            hintText: "15".tr,
                            mycontroller: controller.password,
                            iconData: Icons.lock_outlined,
                          ),
                        ),
                        CustomButtomAuth(
                          text: "9".tr,
                          onPressed: () {
                            controller.signUp();
                          },
                        ),
                        SizedBox(height: 25),
                        CustomTextSingnIn(
                          onTap: () {
                            controller.goToSignIn();
                          },
                          text1: "23".tr,
                          text2: "9".tr,
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
