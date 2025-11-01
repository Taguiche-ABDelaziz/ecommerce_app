import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/productdetails/priceandcount.dart';
import 'package:ecommerce/view/widget/productdetails/subitemslist.dart';
import 'package:ecommerce/view/widget/productdetails/toppageproductdetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ProductdetailsControllerImp controller = Get.put(
      ProductdetailsControllerImp(),
    );
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 50,

        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: AppColor.secondColor,
          onPressed: () {},
          child: Text(
            "Add To Card",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        children: [
          Toppageproductdetails(),
          SizedBox(height: 100),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${controller.itemsModel.itemsName}",
                  style: Theme.of(
                    context,
                  ).textTheme.displayLarge!.copyWith(color: AppColor.black),
                ),
                SizedBox(height: 10),
                PriceAndCountItems(
                  onAdd: () {},
                  onRemove: () {},
                  price: "200",
                  count: "5",
                ),
                SizedBox(height: 10),
                Text(
                  "${controller.itemsModel.itemsDesc}",
                  style: Theme.of(context).textTheme.headlineSmall!,
                ),
                SizedBox(height: 10),
                Text(
                  "58".tr,
                  style: Theme.of(
                    context,
                  ).textTheme.displayLarge!.copyWith(color: AppColor.black),
                ),
                SizedBox(height: 10),
                SubItemsList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
