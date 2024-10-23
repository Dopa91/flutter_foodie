
import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/models/food_item_class.dart';

class FoodContainerWidget extends StatelessWidget {
  final Function()? onTap;
  final FoodItem foodRecipe;

  const FoodContainerWidget({
    super.key,
    required this.onTap,
    required this.foodRecipe, required FoodItem foodItem,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 0.1),
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(200, 100, 62, 41),
                  Color.fromARGB(200, 100, 62, 41),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row( // Main Row
              children: [
                Padding( // Bild
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(foodRecipe.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column( // rechter Inhalt
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row( // Erste Zeile: Titel und Favoriten-Icon
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text( // Title Text
                            foodRecipe.imageTitle,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 234, 220, 208),
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              fontFamily: "SFProDisplay",
                            ),
                          ),
                          const Icon(Icons.favorite_border_sharp, // Favoriten-Icon
                            size: 30,
                            color: Color.fromARGB(255, 234, 220, 208),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row( // Zweite Zeile: Zeit und Preis
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text( // Zeit
                            foodRecipe.imageSubTime,
                            style: const TextStyle(
                              color: fontColor1,
                              fontSize: 14,
                            ),
                          ),
                          Text( // Preis
                            foodRecipe.imagePrice,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
