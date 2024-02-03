import 'package:flutter/material.dart';
import 'package:payment_project/core/utils/style.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    leading: Center(
      child: Icon(
        Icons.arrow_back,
        color: Colors.black,
        weight: 25,
      ),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.style25,
    ),
  );
}
