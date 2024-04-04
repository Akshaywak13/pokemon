import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/const/poke_type_container.dart';
import 'package:pokemon_app/const/text_style.dart';
import 'package:pokemon_app/controller/get_controller.dart';
import 'package:pokemon_app/screen/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
  final PockedController pockedController=Get.put(PockedController());
     @override
  void initState() {
    pockedController.getData(context);
    super.initState();
  }
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "PokeApp",
                style: TextStyle(fontFamily: "circular_bold", fontSize: 36),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Obx(() => pockedController.isLoading.value?Center(child: CircularProgressIndicator(color:Colors.green,),):
               
                GridView.builder(
                  
                  physics: BouncingScrollPhysics(),
                  
                    shrinkWrap: true,
                   // itemCount:pockedController.pokemonModel.pokemon!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: width<600 ? 2:
                        width<1100?4 :6,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                    
                     var data= pockedController.pokemonModel.pokemon![index];
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red,
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  bottom: -20,
                                  right: -20,
                                  child: Image.asset(
                                    "assets/images/pokeball.png",
                                    width: 150,
                                    color: Colors.white.withOpacity(0.5),
                                  )),
                              Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: Image.asset("assets/images/img1.png",
                                      width: 150)),
                              Positioned(
                                top: 20,
                                left: 10,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      headingText(
                                        text:data.name ,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                      typeContainer(
                                        text: "Grase",
                                        color: Colors.white,
                                        size: 16
                                      ),
                                      SizedBox(height: 6,),
                                       typeContainer(
                                        text: "Poison",
                                        color: Colors.white,
                                        size: 16
                                      ),
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}