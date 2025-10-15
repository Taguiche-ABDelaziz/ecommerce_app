import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/class/statusrquest.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/alertexitapp.dart';
import 'package:ecommerce/core/function/validinput.dart';
import 'package:ecommerce/view/widget/auth/coustominkwelforgetpassword.dart';
import 'package:ecommerce/view/widget/auth/custombuttomauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitelauth.dart';
import 'package:ecommerce/view/widget/auth/logoauth.dart';
import 'package:ecommerce/view/widget/auth/coustomtextsingnup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        title: Text(
          "9".tr,
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
        child: GetBuilder<LoginControllerImp>(
          builder: (controller) =>
              controller.statusRequest == StatusRequest.loading
              ? const Center(child: Text("Loading"))
              : Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(
                      children: [
                        LogoAuth(),
                        CustomTextTitelAuth(text: "10".tr),
                        const SizedBox(height: 10),
                        CustomTextBodyAuthe(text: "11".tr),
                        const SizedBox(height: 35),
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
                        CustomTextFormAuth(
                          isNumbe: false,
                          obscureText: controller.isshowpassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          valid: (val) {
                            return validInput(val!, 8, 25, "password");
                          },
                          labeltext: "14".tr,
                          hintText: "15".tr,
                          mycontroller: controller.password,
                          iconData: Icons.lock_outlined,
                        ),
                        CoustomInkwelForgetPassword(
                          text: "16".tr,
                          onTap: () {
                            controller.gotoForgetPassword();
                          },
                        ),
                        CustomButtomAuth(
                          text: "9".tr,
                          onPressed: () {
                            controller.login();
                          },
                        ),
                        const SizedBox(height: 25),
                        CustomTextSingnUp(
                          text1: "18".tr,
                          text2: "17".tr,
                          onTap: () {
                            controller.goToSignUp();
                          },
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
