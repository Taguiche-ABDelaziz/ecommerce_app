import 'package:ecommerce/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSingUpController extends GetxController {
  goToPageLogin();
}

class SuccessSingUpControllerImp extends SuccessSingUpController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
