import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          SizedBox(height: 25),
          Lottie.asset(
            onBoardingList[i].image!,
            // width: 200,
            height: Get.width / 1.3,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 50),
          Text(
            onBoardingList[i].title!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: AppColor.black,
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: TextStyle(height: 2, color: AppColor.grey, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
