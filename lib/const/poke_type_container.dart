import 'package:flutter/material.dart';
import 'package:pokemon_app/const/text_style.dart';

Widget typeContainer (
  {
    String ? text,Color? color,double? size
  }
) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 4,horizontal: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white.withOpacity(0.30)
    ),
    child: normalText(
      text: text,
      color: color,
      size: size
    ),
  );
}
