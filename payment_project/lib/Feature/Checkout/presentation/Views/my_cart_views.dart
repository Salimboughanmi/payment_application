import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/style.dart';
import 'package:payment_project/core/widgets/my_cart_view_body.dart';

class MyCartViews extends StatelessWidget {
  const MyCartViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          weight: 25,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title:
            Text('My Cart', textAlign: TextAlign.center, style: Styles.style25),
      ),
      body: MyCartViewBody(),
    );
  }
}
