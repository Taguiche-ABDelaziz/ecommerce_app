import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/view/widget/home/customappbar.dart';
import 'package:ecommerce/view/widget/home/customcardhome.dart';
import 'package:ecommerce/view/widget/home/customtitlehome.dart';
import 'package:ecommerce/view/widget/home/listcategorieshome.dart';
import 'package:ecommerce/view/widget/home/listitmshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => HandlingDataView(
        statusRequest: controller.statusRequest,
        widget: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              CustomAppBar(
                titleappbar: "52".tr,
                onPressedIcon: () {},
                onPressedSearch: () {},
              ),
              CustomCardHome(title: "A summer surprise", body: "Cashback 20%"),
              CustomTitleHome(title: "Categories"),
              ListCategoriesHome(),
              CustomTitleHome(title: "Product for you"),
              ListItmsHome(),
              CustomTitleHome(title: "offer"),
              ListItmsHome(),
            ],
          ),
        ),
      ),
    );
  }
}
