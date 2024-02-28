import 'package:flutter/material.dart';
import 'package:payment_project/Feature/Checkout/presentation/Views/payment_details.dart';
import 'package:payment_project/core/widgets/payment_methode_item.dart';
import 'package:payment_project/core/widgets/payment_methode_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PaymentMethodeListView(),
          CustomCreditCart(),
        ],
      ),
    );
  }
}
