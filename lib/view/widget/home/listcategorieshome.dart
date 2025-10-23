import 'package:ecommerce/controller/home_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/model/categoriesmodel.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ListCategoriesHome extends GetView<HomeControllerImp> {
  const ListCategoriesHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            categoriesModel: CategoriesModel.fromJson(
              controller.categories[index],
            ),
          );
        },
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final CategoriesModel categoriesModel;
  const Categories({super.key, required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColor.thirdColor,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 70,
          width: 70,
          child: SvgPicture.network(
            "${AppLink.imagesCategories}/${categoriesModel.categoresImage}",
          ),
        ),
        Text("${categoriesModel.categoresName}"),
      ],
    );
  }
}
