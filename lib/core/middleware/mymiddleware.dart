import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  // ignore: body_might_complete_normally_nullable
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("step") == "2") {
      return RouteSettings(name: AppRoute.homepage);
    }
    if (myServices.sharedPreferences.getString("step") == "1") {
      //هدي تاع اللغة
      return RouteSettings(name: AppRoute.login);
    }
    return null;
  }
}
