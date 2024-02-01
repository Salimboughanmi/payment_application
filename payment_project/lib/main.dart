import 'package:flutter/material.dart';
import 'package:payment_project/Feature/Checkout/presentation/Views/my_cart_views.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartViews(),
    );
  }
}
