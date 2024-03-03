import 'package:flutter/material.dart';
import 'package:payment_project/core/widgets/Custom_dashed_ligne.dart';
import 'package:payment_project/core/widgets/thank_u_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: thankYouCard(),
          ),
          Positioned(
            //top: 150,
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 20 + 16,
            right: 20 + 16,
            child: CustomDashedLine(),
          ),
          Positioned(
            left: 10,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: 10,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xFFD9D9D9),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                child: Icon(
                  size: 35,
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
