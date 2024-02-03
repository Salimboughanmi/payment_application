import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/style.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        /* mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, */
        children: [
          SizedBox(
            height: 15,
          ),
          Image.asset('assets/images/basket_image.png'),
          SizedBox(
            height: 15,
          ),
          OrderInfoItem(
            title: "Order sobutal",
            value: r"$24.09",
          ),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: "Order sobutal",
            value: r"$24.09",
          ),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: "Order sobutal",
            value: r"$24.09",
          ),
        ],
      ),
    );
  }
}

class OrderInfoItem extends StatelessWidget {
  OrderInfoItem({super.key, required this.title, required this.value});
  String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style18,
        ),
        Spacer(),
        Text(
          value,
          style: Styles.style18,
        )
      ],
    );
  }
}
