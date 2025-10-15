import 'package:ecommerce/core/class/statusrquest.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/function/handlingdatacontroller.dart';
import 'package:ecommerce/data/datasource/remote/forgetpassword/resetpassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goToUccesResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController password;
  late TextEditingController repassword;

  String? email;

  bool isshowpassword = true;

  StatusRequest? statusRequest;

  ResetpasswordData resetpasswordData = ResetpasswordData(Get.find());

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  resetpassword() {}

  @override
  goToUccesResetPassword() async {
    if (password.text != repassword.text) {
      return Get.defaultDialog(title: "44".tr, middleText: "50".tr);
    }
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetpasswordData.postData(email!, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoute.successResetPassword);
        } else {
          Get.defaultDialog(title: "44".tr, middleText: "51".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      // ignore: avoid_print
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
