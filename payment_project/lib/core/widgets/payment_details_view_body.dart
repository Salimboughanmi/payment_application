import 'package:flutter/material.dart';
import 'package:payment_project/Feature/Checkout/presentation/Views/thank_you_view.dart';
import 'package:payment_project/core/widgets/custom_button.dart';
import 'package:payment_project/core/widgets/custom_creditCart.dart';
import 'package:payment_project/core/widgets/payment_methode_list_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: PaymentMethodeListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCart(
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 14, left: 14, right: 14),
              child: CustomButton(
                text: "payment",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ThanakYouView()));
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
