import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/style.dart';

class TotalPrice extends StatelessWidget {
  TotalPrice({super.key, required this.title, required this.value});
  String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style24,
        ),
        Spacer(),
        Text(
          value,
          style: Styles.style24,
        )
      ],
    );
  }
}
