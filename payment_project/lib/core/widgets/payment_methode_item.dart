import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodeItem extends StatelessWidget {
  const PaymentMethodeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 103,
      height: 63,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.50, color: Colors.green),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
              blurRadius: 4,
              color: Colors.green,
              offset: Offset(0, 0),
              spreadRadius: 0),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
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
