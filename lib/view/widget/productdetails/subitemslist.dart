import 'package:ecommerce/controller/productdetails_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubItemsList extends GetView<ProductdetailsControllerImp> {
  const SubItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          controller.subitems.length,
          (index) => Container(
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.center,
            height: 65,
            width: 80,
            decoration: BoxDecoration(
              color: controller.subitems[index]['active'] == 1
                  ? Colors.black
                  : Colors.white,
              border: Border.all(color: AppColor.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              controller.subitems[index]['name'],
              style: TextStyle(
                color: controller.subitems[index]['active'] == 1
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
