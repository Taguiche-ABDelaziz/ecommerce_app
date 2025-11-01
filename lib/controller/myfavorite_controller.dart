import 'package:ecommerce/core/class/statusrquest.dart';
import 'package:ecommerce/core/function/handlingdatacontroller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/remote/myfavoirte_data.dart';
import 'package:ecommerce/data/model/myfavroite.dart';
import 'package:get/get.dart';

class Myfavoritecontroller extends GetxController {
  MyFavoirteData myFavoirteData = MyFavoirteData(Get.find());

  List<MyFavoriteModel> data = [];

  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;
    //update();
    var response = await myFavoirteData.getData(
      myServices.sharedPreferences.getString("id")!,
    );
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List responsedata = response['data'];
        data.addAll(responsedata.map((e) => MyFavoriteModel.fromJson(e)));
        print("================= data");
        print(data);
        update();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  deletFromFavorite(String favoriteid) {
    var response = myFavoirteData.deletData(favoriteid);
    statusRequest = handlingData(response);
    data.removeWhere((element) => element.favoriteId == favoriteid);
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
