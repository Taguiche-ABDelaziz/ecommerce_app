import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:get/get.dart';

abstract class ProductDetailsController extends GetxController {
  // intinalData();
}

class ProductdetailsControllerImp extends ProductDetailsController {
  late ItemsModel itemsModel;

  //@override
  intinalData() {
    itemsModel = Get.arguments["itemsmodel"];
  }

  List subitems = [
    {"name": "red", "id": 1, "active": 0},
    {"name": "yallow", "id": 2, "active": 0},
    {"name": "red", "id": 3, "active": 1},
  ];

  @override
  void onInit() {
    intinalData();
    super.onInit();
  }
}
