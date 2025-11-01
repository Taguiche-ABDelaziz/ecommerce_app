import 'package:ecommerce/view/screnn/home.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class HomeScrennController extends GetxController {
  changPage(int i);
}

class HomeScrennControllerImp extends HomeScrennController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Settings"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Profile"))],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Center(child: Text("Favorite"))],
    ),
  ];
  List titlebottomappbar = ["54".tr, "55".tr, "56".tr, "57".tr];

  @override
  changPage(int i) {
    currentpage = i;
    update();
  }
}
