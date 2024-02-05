import 'package:flutter/material.dart';
import 'package:payment_project/core/widgets/payment_methode_item.dart';

class PaymentMethodeListView extends StatefulWidget {
  const PaymentMethodeListView({
    super.key,
  });

  @override
  State<PaymentMethodeListView> createState() => _PaymentMethodeListViewState();
}

class _PaymentMethodeListViewState extends State<PaymentMethodeListView> {
  final List<String> paymentMethodeItems = const [
    'assets/images/card.svg',
    'assets/images/master_card.svg',
    'assets/images/paypal.svg'
  ];
  int? activebox;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentMethodeItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                activebox = index;
                setState(() {});
              },
              child: PaymentMethodeItem(
                isactive: activebox == index,
                image: paymentMethodeItems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
