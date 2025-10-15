import 'package:ecommerce/core/class/statusrquest.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/function/handlingdatacontroller.dart';
import 'package:ecommerce/data/datasource/remote/auth/verficodesignup.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSingUpController extends GetxController {
  checkCode();
  goTosuccessSinUp(String verfiyCodeSignup);
}

class VerifyCodeSingUpControllerImp extends VerifyCodeSingUpController {
  VerfiCodeSignupData verfiCodeSignupData = VerfiCodeSignupData(Get.find());

  String? email;

  StatusRequest? statusRequest;

  @override
  checkCode() {}

  @override
  goTosuccessSinUp(verfiyCodeSignup) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verfiCodeSignupData.postData(email!, verfiyCodeSignup);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successSignup);
      } else {
        Get.defaultDialog(title: "44".tr, middleText: "46".tr);
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
