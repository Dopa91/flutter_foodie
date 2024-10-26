import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/models/portion_counter.dart';
import 'package:foodie_screen/screens/preperation_screen.dart';
import 'package:foodie_screen/widget/recipe_container_widget.dart';

class RecipeScreen extends StatelessWidget {
  final String foodItem;

  const RecipeScreen({super.key, required this.foodItem});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ 
            backroundColor2,
            backroundColor1
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 80, right: 20, left: 20), 
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                foodItem, 
                textAlign: TextAlign.center,
                style: const TextStyle(         
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      fontFamily: "SFProDisplay",
                      color: Color.fromARGB(255, 255, 248, 243),
                      shadows:[
                          Shadow(
                          blurRadius: 3,
                          color: Color.fromARGB(255, 255, 248, 243),
                          offset: Offset(1, 1)
                          ),
                      ],
                     ), 
                    ),   
               const SizedBox(height: 20),
             const RecipeContainer(),
            const SizedBox(height: 20),
                 const Divider( thickness: 0.7, 
                    color: Color.fromARGB(255, 0, 0, 0)),
           Container(
             child: const Text( " Portion", style: TextStyle(  fontSize: 36,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        fontFamily: "SFProDisplay",
                        color: Color.fromARGB(255, 255, 252, 249),
                        shadows:[
                          Shadow(
                            blurRadius: 4,
                            color: Color.fromARGB(255, 255, 252, 249),
                   ),
                 ],
                ),
               ),
           ),
             PortionCounter(),
                    GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PreparationScreen(),
                    ),
                  );
                },
                  child: const Center(
                    child: Text( " Zu der Zubereitung", style: TextStyle( 
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      fontFamily: "SFProDisplay",
                      color: Color.fromARGB(2255, 255, 252, 249),
                      decoration: TextDecoration.underline, 
                      decorationColor:Color.fromARGB(255, 227, 206, 188),
                   ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
   


// scaffoldBackgroundColor: Colors.transparent,
//           fontFamily: "SFProDisplay");