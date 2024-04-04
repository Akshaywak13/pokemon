import 'package:flutter/material.dart';
import 'package:pokemon_app/const/poke_type_container.dart';
import 'package:pokemon_app/const/text_style.dart';

Widget landscapeContainer(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headingText(color: Colors.white, size: 36, text: "Balbasaur"),
                      Row(
                        children: [
                          typeContainer(
                            text: "Grase",
                            color: Colors.white,
                            size: 16,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          typeContainer(
                            text: "Poison",
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      
                    ],
                  ),
                  Align(
                        alignment: Alignment.center,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Image.asset(
                              "assets/images/pokeball.png",
                              width: 180,
                              color: Colors.white.withOpacity(0.5),
                            ),
                            Image.asset(
                              "assets/images/img1.png",
                              width: 180,
                            )
                          ],
                        ),
                      ),
    ],
  );
}
