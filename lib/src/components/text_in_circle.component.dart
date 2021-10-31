import 'package:flutter/material.dart';

Widget textInCircle(String text, double size) {
  return Container(
    child: _text(text, size),
  );
}

Widget _text(String text, double size) {
  return Text(text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: size,
        fontFamily: 'NimbusSans',
      ));
}
