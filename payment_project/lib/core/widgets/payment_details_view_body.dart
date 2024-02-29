import 'package:flutter/material.dart';
import 'package:payment_project/core/widgets/custom_button.dart';
import 'package:payment_project/core/widgets/custom_creditCart.dart';
import 'package:payment_project/core/widgets/payment_methode_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: PaymentMethodeListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCart(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 14, left: 14, right: 14),
              child: CustomButton(
                text: "Complete payment",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
