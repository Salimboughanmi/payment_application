import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_project/core/widgets/custom_app_bar.dart';
import 'package:payment_project/core/widgets/payment_details_view_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: PaymentDetailsViewBody(),
    );
  }
}

class CustomCreditCart extends StatefulWidget {
  const CustomCreditCart({super.key});

  @override
  State<CustomCreditCart> createState() => _CustomCreditCartState();
}

class _CustomCreditCartState extends State<CustomCreditCart> {
  String cardNumber = 'vvv',
      expiryDate = 'vvvv',
      cardHolderName = 'vvv',
      cvvCode = 'vvv';

  bool showBackView = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: /* isCvvFocused */
              true, //true when you want to show cvv(back) view
          onCreditCardWidgetChange:
              (value) {}, // Callback for anytime credit card brand is changed
        ),
      ],
    );
  }
}
