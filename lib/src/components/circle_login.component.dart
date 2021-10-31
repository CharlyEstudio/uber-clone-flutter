import 'package:flutter/material.dart';
import 'package:uber_clone_flutter/src/utils/my_colors.dart';

Widget circleLogin() {
  return Container(
    width: 230.0,
    height: 230.0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(120.0),
        color: MyColors.primaryColor),
  );
}
