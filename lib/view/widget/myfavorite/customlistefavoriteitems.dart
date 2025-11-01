import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/controller/myfavorite_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/translatedabase.dart';
import 'package:ecommerce/data/model/myfavroite.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListFavoirteItems extends GetView<Myfavoritecontroller> {
  final MyFavoriteModel myFavoriteModel;

  const CustomListFavoirteItems({super.key, required this.myFavoriteModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.goToPageProfuctDetails(myFavoriteModel);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: "${myFavoriteModel.itemsId}",
                child: CachedNetworkImage(
                  imageUrl:
                      "${AppLink.imagesItems}/${myFavoriteModel.itemsImage}",
                  fit: BoxFit.fill,
                  height: 120,
                ),
              ),
              SizedBox(height: 10),
              Text(
                translateDatabase(
                  myFavoriteModel.itemsNameAr!,
                  myFavoriteModel.itemsName!,
                ),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text("Rating 3.5", textAlign: TextAlign.center),

                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 20,
                    child: Row(
                      children: [
                        ...List.generate(
                          5,
                          (index) => Icon(Icons.star, size: 15),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${myFavoriteModel.itemsPrice} \$",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: "sans",
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.deletFromFavorite(myFavoriteModel.favoriteId!);
                    },
                    icon: Icon(
                      Icons.delete_outline_outlined,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
