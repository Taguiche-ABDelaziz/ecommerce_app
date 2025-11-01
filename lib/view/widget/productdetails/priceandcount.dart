import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

class PriceAndCountItems extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String price;
  final String count;
  const PriceAndCountItems({
    super.key,
    required this.onAdd,
    required this.onRemove, required this.price, required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            Container(
              width: 50,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 2),
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.black),
              ),
              child: Text(count, style: TextStyle(fontSize: 20, height: 1.1)),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
          ],
        ),
        Spacer(),
        Text(
          "$price\$",
          style: TextStyle(
            color: AppColor.secondColor,
            fontSize: 30,
            height: 1.1,
          ),
        ),
      ],
    );
  }
}
