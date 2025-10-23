import 'package:ecommerce/core/class/statusrquest.dart';
import 'package:ecommerce/core/function/handlingdatacontroller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getData();
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  late StatusRequest statusRequest;

  //List data = [];
  List categories = [];
  List items = [];

  HomeData homeData = HomeData(Get.find());

  String? username;
  String? id;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    getData();
    initialData();
    super.onInit();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    // ignore: avoid_print
    print("=================== Controller $response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
