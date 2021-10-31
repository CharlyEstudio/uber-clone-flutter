import 'package:flutter/material.dart';
import 'package:uber_clone_flutter/src/controllers/input_session.controller.dart';
import 'package:uber_clone_flutter/src/utils/my_colors.dart';

Widget textFieldTelephone(InputsSessionController cont) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
    decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30)),
    child: TextField(
        controller: cont.telephoneController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            hintText: 'Teléfono',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15.0),
            prefixIcon: Icon(
              Icons.phone,
              color: MyColors.primaryColor,
            ),
            hintStyle: TextStyle(color: MyColors.primaryColorDark))),
  );
}
