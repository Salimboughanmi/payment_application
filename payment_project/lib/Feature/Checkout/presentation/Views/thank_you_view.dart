import 'package:flutter/material.dart';
import 'package:payment_project/core/widgets/custom_app_bar.dart';
import 'package:payment_project/core/widgets/thank_view_body.dart';

class ThanakYouView extends StatelessWidget {
  const ThanakYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
        child: ThankYouViewBody(),
        offset: Offset(0, -16),
      ),
    );
  }
}
