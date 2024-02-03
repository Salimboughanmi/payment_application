import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/style.dart';
import 'package:payment_project/core/widgets/cart_info-item.dart';
import 'package:payment_project/core/widgets/custom_button.dart';
import 'package:payment_project/core/widgets/total_price_widget.dart';

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
          Divider(
            color: Color.fromARGB(255, 69, 164, 179),
            height: 15,
            thickness: 2,
          ),
          TotalPrice(
            title: 'Total',
            value: r'$50',
          ),
          CustomButton(text: 'Complete Payment')
        ],
      ),
    );
  }
}
