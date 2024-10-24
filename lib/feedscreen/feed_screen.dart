import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/feautures/search_button.dart';
import 'package:foodie_screen/feedscreen/recipe_screen.dart';
import 'package:foodie_screen/repositories/food_data.dart';
import 'package:foodie_screen/widget/food_container_widget.dart';


class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});



  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
int _selectedIndex = 0;

void _navigateBottnBar(int index){
  setState(() {
    _selectedIndex = index;
    if (_selectedIndex == 1) {
     Navigator.of(context).push(MaterialPageRoute(builder:(context) => const RecipeScreen(foodItem: " Fav." ),
       ));
    }
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: backroundColor2,
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor:searchButtonColor1, 
      fixedColor:
                const Color.fromARGB(255, 174, 90, 11), 
      
      
      
      currentIndex: _selectedIndex,
      onTap: _navigateBottnBar,
      type: BottomNavigationBarType.fixed,
            items: const [
       BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: "Heute" ),
       BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorit"),
       BottomNavigationBarItem(icon: Icon(Icons.public), label: "Entdecken"),
       BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),

    ],),
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
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            children: [
            const SearchButton(text: "Was möchtest du heute kochen?"),
            SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemCount: foodRecipe.length,
                  
                  itemBuilder: (context, index) {
                    final foodItem = foodRecipe[index];
                    
                    return FoodContainerWidget(
                      onTap: () {
                        Navigator.push(context, 
                        MaterialPageRoute(
                      builder: (context) =>  // Rezepte Seite
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
            ],
          ),
        ),
      ),
    );
  }
}