import 'package:flutter/material.dart';
import 'package:uber_clone_flutter/src/controllers/input_session.controller.dart';
import 'package:uber_clone_flutter/src/utils/my_colors.dart';

Widget textFieldConfirmPassword(InputsSessionController cont) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
    decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30)),
    child: TextField(
        controller: cont.confirmPasswordController,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Repetir Contraseña',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15.0),
            prefixIcon: Icon(
              Icons.lock_outline,
              color: MyColors.primaryColor,
            ),
            hintStyle: TextStyle(color: MyColors.primaryColorDark))),
  );
}
