import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodeItem extends StatelessWidget {
  PaymentMethodeItem({super.key, required this.isactive});
  bool isactive = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
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
