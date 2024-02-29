import 'package:flutter/material.dart';
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
