import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/data/repository/database_repository.dart';
import 'package:foodie_screen/feautures/favorite/widgets/food_container_widget.dart';
import 'package:foodie_screen/feautures/feed/models/food_data.dart';
import 'package:foodie_screen/feautures/feed/screens/recipe_screen.dart';
import 'package:foodie_screen/shared/widgets/search_button.dart';


class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key,required this.repository});

final DatabaseRepository repository;  
  @override
  State<FeedScreen> createState() => _FeedScreenState();
}
class _FeedScreenState extends State<FeedScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: backroundColor2,
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
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
            const SearchButton(text: "Was möchtest du heute kochen?"),
            const SizedBox(height: 10),
              Expanded(
                child: FutureBuilder(
                  future: widget.repository.getAllRecipes(),
                  builder: (context, snapshot)=>
                   ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final foodItem = snapshot.data![index];
                      return FoodContainerWidget(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(
                        builder: (context) => // Rezepte Seite
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