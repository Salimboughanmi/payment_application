import 'package:flutter/material.dart';
import 'package:payment_project/core/widgets/cart_info-item.dart';
import 'package:payment_project/core/widgets/custom_button.dart';
import 'package:payment_project/core/widgets/payment_methode_list_view.dart';
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
            height: 5,
          ),
          Expanded(
            child: Image.asset('assets/images/basket_image.png'),
          ),
          SizedBox(
            height: 5,
          ),
          OrderInfoItem(
            title: "Order sobutal",
            value: r"$24.09",
          ),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: "Discount",
            value: r"$24.09",
          ),
          SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: "Shipping",
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
          CustomButton(
            text: 'Complete Payment',
            onTap: () => {
              /* Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return PaymentDetails();
                  },
                ),
              ), */

              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  builder: (context) {
                    return PaymentMethodeBottomSheet();
                  })
            },
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class PaymentMethodeBottomSheet extends StatelessWidget {
  const PaymentMethodeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodeListView(),
          SizedBox(
            height: 16,
          ),
          CustomButton(text: 'Continue')
        ],
      ),
    );
  }
}
