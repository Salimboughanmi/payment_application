import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/style.dart';

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
