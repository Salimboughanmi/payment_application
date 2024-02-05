import 'package:flutter/material.dart';
import 'package:payment_project/core/widgets/payment_methode_item.dart';
import 'package:payment_project/core/widgets/payment_methode_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodeListView(),
      ],
    );
  }
}
