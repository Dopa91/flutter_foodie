import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/feautures/search_button.dart';
import 'package:foodie_screen/feedscreen/recipe_screen.dart';
import 'package:foodie_screen/repositories/food_data.dart';
import 'package:foodie_screen/widget/food_container_widget.dart';


class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: backroundColor2,
    //   appBar: AppBar( actions: [GestureDetector(
    //     onTap: (){ Navigator.push(context, MaterialPageRoute(
    //       builder: (context)=> 
    //        const SignUpScreen(  // musst du ändern !!!!!
    //     ),
    //     ),
    //     );
    //     },
    //     child: Container(
    //       margin: const EdgeInsets.symmetric(horizontal: 16),
    //       width: 340, 
    //       height: 40,
    //       decoration: BoxDecoration(color: searchButtonColor1,
    //       borderRadius: BorderRadius.circular(10),
    //       ),
    //       alignment: Alignment.center,
    //       child: const Text
    //       ("Was möchtest du heute Kochen?",
    //       style: TextStyle(
    //         fontFamily: "SFProDisplay",
    //         fontWeight: FontWeight.w500,
    //         fontSize: 14,
    //         fontStyle: FontStyle.italic,
    //         ),
    //       ),
    //     ),
    //   )
    // ],
    //   ),
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
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
            const SearchButton(text: "Was möchtest du heute kochen?"),
            const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: SizedBox(
                  width: 400,
                  height: 714,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: foodRecipe.length,
                    
                    itemBuilder: (context, index) {
                      final foodItem = foodRecipe[index];
                      
                      return FoodContainerWidget(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(
                        builder: (context) => 
                              RecipeScreen(foodItem: 
                        foodItem.imageTitle
                      ),
                     )
                   );
                   },
                   foodRecipe: foodRecipe[index], foodItem: foodItem,
                     );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}