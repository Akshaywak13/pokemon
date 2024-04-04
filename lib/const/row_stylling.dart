import 'package:flutter/material.dart';
import 'package:pokemon_app/const/colors.dart';
import 'package:pokemon_app/const/text_style.dart';

Widget rowStylling(
  {
    String? text,
    String? value,
    
  }
) {
 return Row(
    children: [
      headingText(color: grey, size: 16, text:text),
      SizedBox(
        width: 100,
      ),
      headingText(color: grey, size: 16, text: value),
    ],
  );
}
