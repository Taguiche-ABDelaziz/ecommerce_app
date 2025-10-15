import 'package:ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessresetpasswordController extends GetxController {
  goToPageLogin();
}

class SuccessresetpasswordControllerImp extends SuccessresetpasswordController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
