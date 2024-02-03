import 'package:flutter/material.dart';
import 'package:payment_project/core/widgets/payment_methode_item.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PaymentMethodeItem(
          isactive: false,
        ),
      ],
    );
  }
}
