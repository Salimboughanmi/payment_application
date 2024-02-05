import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodeItem extends StatelessWidget {
  PaymentMethodeItem({super.key, required this.isactive, required this.image});
  bool isactive = false;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      width: 103,
      height: 63,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1.50, color: isactive ? Colors.green : Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
              blurRadius: 4,
              color: isactive ? Colors.green : Colors.white,
              offset: Offset(0, 0),
              spreadRadius: 0),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 255, 255, 255)),
        child: Center(
          child: SvgPicture.asset(
            "assets/images/card.svg",
            height: 25,
          ),
        ),
      ),
    );
  }
}

class PaymentMethodeListView extends StatelessWidget {
  const PaymentMethodeListView({
    super.key,
  });
  final List<String> paymentMethodeItems = const [
    'assets/images/card.svg',
    'assets/images/master_card.svg',
    'assets/images/paypal.svg'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return PaymentMethodeItem(
          isactive: false,
          image: paymentMethodeItems[index],
        );
      },
    );
  }
}
