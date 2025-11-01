import 'package:ecommerce/controller/myfavorite_controller.dart';
import 'package:ecommerce/core/class/handlingdataview.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/widget/customappbar.dart';
import 'package:ecommerce/view/widget/myfavorite/customlistefavoriteitems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Myfavroite extends StatelessWidget {
  const Myfavroite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Myfavoritecontroller());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: GetBuilder<Myfavoritecontroller>(
          builder: (controller) => ListView(
            children: [
              CustomAppBar(
                titleappbar: "52".tr,
                onPressedIcon: () {},
                onPressedSearch: () {},
                onPressedIconFavorite: () {
                  Get.toNamed(AppRoute.myfavroite);
                },
              ),
              HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return CustomListFavoirteItems(
                      myFavoriteModel: controller.data[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
