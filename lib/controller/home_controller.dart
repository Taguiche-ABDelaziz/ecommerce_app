import 'package:ecommerce/core/class/statusrquest.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/function/handlingdatacontroller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getData();
  goTOItems(List categories, int selectedCategories, String categoryid);
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
  String? lang;

  @override
  initialData() {
    lang = myServices.sharedPreferences.getString("lang");
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

  @override
  goTOItems(categories, selectedCategories, categoryid) {
    Get.toNamed(
      AppRoute.items,
      arguments: {
        "categories": categories,
        "selectedCategories": selectedCategories,
        "catid": categoryid,
      },
    );
  }
}
