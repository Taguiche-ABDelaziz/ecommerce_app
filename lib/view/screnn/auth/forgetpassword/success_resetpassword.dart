import 'package:ecommerce/controller/auth/successresetpassword_controller.dart';
import 'package:ecommerce/view/widget/auth/custombuttomauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessresetpasswordControllerImp controller = Get.put(
      SuccessresetpasswordControllerImp(),
    );
    return Scaffold(
      // appBar: AppBar(
      // backgroundColor: AppColor.backgroundcolor,
      //centerTitle: true,
      //title: Text(
      //"37".tr,
      //style: Theme.of(
      //context,
      //).textTheme.displayLarge!.copyWith(color: AppColor.grey),
      //),
      //),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 105),
            Center(
              child: Icon(
                Icons.check_circle_rounded,
                size: 350,
                color: Colors.green,
              ),
            ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
            Text(
                  "37".tr,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black,
                  ),
                )
                .animate()
                .fade(duration: 500.ms)
                .scale(delay: 500.ms), // runs after fade.
            Spacer(),
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              child: CustomButtomAuth(
                text: "38".tr,
                onPressed: () {
                  controller.goToPageLogin();
                },
              ),
            ),
            SizedBox(height: 65),
          ],
        ),
      ),
    );
  }
}
