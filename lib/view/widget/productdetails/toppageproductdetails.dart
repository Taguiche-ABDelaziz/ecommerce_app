import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Toppageproductdetails extends GetView<ProductdetailsControllerImp> {
  const Toppageproductdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: AppColor.secondColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
        ),
        Positioned(
          top: 50,
          right: Get.width / 9,
          left: Get.width / 9,
          child: Hero(
            tag: "${controller.itemsModel.itemsId}",
            child: CachedNetworkImage(
              imageUrl:
                  "${AppLink.imagesItems}/${controller.itemsModel.itemsImage}",
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}