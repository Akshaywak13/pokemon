import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/const/colors.dart';
import 'package:pokemon_app/const/landscape_container.dart';
import 'package:pokemon_app/const/potrate_container.dart';
import 'package:pokemon_app/const/row_stylling.dart';
import 'package:pokemon_app/const/stat_row.dart';
import 'package:pokemon_app/const/text_style.dart';
import 'package:pokemon_app/controller/get_controller.dart';
import 'package:pokemon_app/model/pokemon_model.dart';

class DetailsScreen extends StatelessWidget {
   DetailsScreen({super.key,});
  @override
  Widget build(BuildContext context) {
  

var width = MediaQuery.of(context).size.width;
var orientation = MediaQuery.of(context).orientation;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
              )),
        ),
        backgroundColor: Colors.red,
        body: Column(
          children: [
            Expanded(
                child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child:orientation==Orientation.portrait? potraitcontainer():landscapeContainer(),
            ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(12))
              ),
              child:  Column(
                children: [
                  TabBar(
                    labelColor: black,
                    unselectedLabelColor: grey,
                    tabs: [
                    Tab(
                      text: "About",
                    ),
                    Tab(
                      text: "Base Stats",
                    )
                  ]),
                  Expanded(
                    child: TabBarView(children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            normalText(color: black,
                            size: 16,
                            text: "It can be seen jungale having a seed on its back."
                            ),
                            SizedBox(height: 10,),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: width-100,
                                child: Card(
                                  color: lightGrey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(children: [
                                          headingText(
                                            color: grey,
                                            size: 16,
                                            text: "Height"
                                          ),
                                          SizedBox(height: 6,),
                                          headingText(
                                            color: grey,
                                            size: 16,
                                            text: "15ft"
                                          )
                                        ],),
                                         Column(children: [
                                          headingText(
                                            color: grey,
                                            size: 16,
                                            text: "Weight"
                                          ),
                                          SizedBox(height: 6,),
                                          headingText(
                                            color: grey,
                                            size: 16,
                                            text: "15lbs"
                                          )
                                        ],),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            
                            SizedBox(
                              height: 15,
                            ),
                            headingText(
                              color: black,
                              size: 16,
                              text: "Breeding"
                            ),
                            SizedBox(height: 10,),
                            rowStylling(text: "Gender",value: "Male"),
                            rowStylling(text: "Egg Cycle",value: "Grass, Monster"),
                            rowStylling(text: "Evolution",value: "Grass, Monster"),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.cyan,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            statRow(text: "HP",value: "20"),
                            statRow(text: "Attack",value: "70"),
                            statRow(text: "Defance",value: "40"),
                            statRow(text: "Avolution",value: "90"),
                          ],
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
