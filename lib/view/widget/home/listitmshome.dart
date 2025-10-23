import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/data/model/itemsmodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItmsHome extends GetView<HomeControllerImp> {
  const ListItmsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        itemCount: controller.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return ItemsHome(
            itemsModel: ItemsModel.fromJson(controller.items[i]),
          );
        },
      ),
    );
  }
}

class ItemsHome extends StatelessWidget {
  final ItemsModel itemsModel;
  const ItemsHome({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Image.network(
            "${AppLink.imagesItems}/${itemsModel.itemsImage}",
            height: 100,
            width: 150,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            //color: AppColor.black,
            //هنا كاين باك قروند كولر زعما و مصلحش
            borderRadius: BorderRadius.circular(20),
          ),
          height: 120,
          width: 200,
        ),
        Positioned(left: 28, top: 45, child: Text("itemsModel.itemsName")),
      ],
    );
  }
}
