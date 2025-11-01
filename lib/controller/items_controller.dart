import 'package:ecommerce/core/class/statusrquest.dart';
import 'package:ecommerce/core/function/handlingdatacontroller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/items_data.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  intialData();
  changcategories(int val, String catval);
  getItems(String categoryid);
  goToPageProfuctDetails(ItemsModel itemsModel);
}

class ItemsControllerImp extends ItemsController {
  List categories = [];
  String? catid;
  int? selectedCategories;
  //ItemsModel? itemsModel;

  ItemsData itemsData = ItemsData(Get.find());

  List data = [];

  late StatusRequest statusRequest;
  MyServices myServices = Get.find();

  @override
  void onInit() {
    intialData();
    getItems(catid!);
    super.onInit();
  }

  @override
  intialData() {
    categories = Get.arguments["categories"];
    selectedCategories = Get.arguments["selectedCategories"];
    catid = Get.arguments["catid"];
    // getItems(catid!);
  }

  @override
  changcategories(val, catval) {
    selectedCategories = val;
    catid = catval;
    getItems(catid!);
    update();
  }

  @override
  getItems(categoryid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    //update();
    var response = await itemsData.getData(categoryid , myServices.sharedPreferences.getString("id")!);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
        update();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  goToPageProfuctDetails(itemsModel) {
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
  }
}
