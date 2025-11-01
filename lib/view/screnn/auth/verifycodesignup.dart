import 'package:ecommerce/controller/auth/verfiycodesingup_controller.dart'
    show VerifyCodeSingUpControllerImp;
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/class/statusrquest.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitelauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCodeSingUp extends StatelessWidget {
  const VerifyCodeSingUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSingUpControllerImp());
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
      body: GetBuilder<VerifyCodeSingUpControllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: controller.statusRequest == StatusRequest.loading
              ? Center(child: Text("Loding"))
              : Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: ListView(
                    children: [
                      CustomTextTitelAuth(text: "28".tr),
                      const SizedBox(height: 10),
                      CustomTextBodyAuthe(text: "30 ${controller.email} ".tr),
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
                          controller.goTosuccessSinUp(verificationCode);
                        }, // end onSubmit
                      ),
                      SizedBox(height: 25),
                      InkWell(
                        onTap: () {
                          controller.reSemd();
                        },
                        child: Center(
                          child: Text(
                            "61".tr,
                            style: TextStyle(
                              color: AppColor.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
