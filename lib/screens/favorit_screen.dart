import "package:flutter/material.dart";
import "package:foodie_screen/config/colors.dart";
import "package:foodie_screen/feautures/fav_button.dart";
import "package:foodie_screen/feautures/search_button.dart";
import "package:foodie_screen/screens/new_collection_screen.dart";
import "package:foodie_screen/widget/fav_container%20widget.dart";

class FavoritScreen extends StatelessWidget {
  const FavoritScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Padding(
                     padding: const EdgeInsets.only(right: 0),
                     child: FavButton(
                      text: "Neue Kollektion",
                      onPressed: () {},
                                       ),
                   ),
                  const SizedBox(width: 0),
                  IconButton(
                    icon: const Icon(Icons.add, size: 40, color: Colors.black45,),
                    color: Colors.white,
                     onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NewCollectionScreen()),
                      );
                    },
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                  height: 490,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: FavContainer(
                              onTap: () {
                                print(" ");
                              },
                              picture1: "assets/images/pizza.png",
                              picture2: "assets/images/baklava.png",
                              picture3: "assets/images/falafelhumus.png",
                              picture4: "assets/images/chickebackground.png",
                              text: "Alle Beiträge",
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: FavContainer(
                              onTap: () {
                                print("Container 2 wurde getippt!");
                              },
                              picture1: "assets/images/asiaaa.png",
                              picture2: "assets/images/fishanchips.png",
                              picture3: "assets/images/fühlingsrolle.png",
                              picture4: "assets/images/asiaaa.png",
                              text: "Asia Food",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: FavContainer(
                              onTap: () {
                                print("Container 3 wurde getippt!");
                              },
                              picture1: "assets/images/taco.png",
                              picture2: "assets/images/steak.png",
                              picture3: "assets/images/pancakes.png",
                              picture4: "assets/images/fleisch.png",
                              text: "Besuch",
                            ),
                          ),
                        ],
                      ),
                    ],
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
