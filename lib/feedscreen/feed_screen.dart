import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/repositories/food_data.dart';
import 'package:foodie_screen/widget/food_container_widget.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        // title: Text ("Foodie"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              backroundColor2, 
              backroundColor1,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

      child: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: SizedBox(
              width: 400,
              height: 900,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: foodRecipe.length,
                
                itemBuilder: (context, index) {
                  final foodItem = foodRecipe[index];
                  return FoodContainerWidget(
                    onTap: () {
                      // showModalBottomSheet(
                      //   context: context,
                      //   isScrollControlled: true,
                      //   builder: (context) =>
                      //       DrawerScreen(FoodItem: foodRecipe[index]),
                      // );
                    }, 
                    foodRecipe: foodRecipe[index], foodItem: foodItem,
            );
            },
          ),
        ),
      ),
      ),
    );
  }
}