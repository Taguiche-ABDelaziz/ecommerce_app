import 'package:ecommerce/controller/homescrenn_conteoller.dart';
import 'package:ecommerce/view/widget/home/custombuttonappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomAppbarHome extends StatelessWidget {
  const CustomBottomAppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScrennConteollerImp>(
      builder: (controller) => BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          children: [
            ...List.generate(controller.listPage.length + 1, (index) {
              int i = index > 2 ? index - 1 : index;
              return index == 2
                  ? Spacer()
                  : CustomButtonAppbar(
                      onPressed: () {
                        controller.changPage(i);
                      },
                      textbutton: controller.titlebottomappbar[i],
                      icondata: Icons.home,
                      active: controller.currentpage == i ? true : false,
                    );
            }),
          ],
        ),
      ),
    );
  }
}
