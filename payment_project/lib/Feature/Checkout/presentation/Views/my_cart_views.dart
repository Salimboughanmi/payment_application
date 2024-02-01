import 'package:flutter/material.dart';

class MyCartViews extends StatelessWidget {
  const MyCartViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 116, 139, 179),
        title: Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0),
        ),
      ),
    );
  }
}
