import "package:flutter/material.dart";
import "package:foodie_screen/config/colors.dart";
import "package:foodie_screen/feautures/favorite/models/new_collection_dialog.dart";
import "package:foodie_screen/feautures/favorite/widgets/fav_container_widget.dart";
import "package:foodie_screen/feautures/favorite/widgets/fav_containers.dart";
import "package:foodie_screen/shared/widgets/fav_button.dart";
import "package:foodie_screen/shared/widgets/search_button.dart";

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
                      onPressed: () { showNewCollection(context); 
                      },
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 490,
                  width: 350, // nimmt die ganze Breite ein
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                    ),
                    itemCount: favContainers.length,
                    itemBuilder: (context, index) {
                      final favContainer = favContainers[index];
                      return Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: FavContainer(
                                  onTap: favContainer.onTap,
                                  picture1: favContainer.picture1,
                                  picture2: favContainer.picture2,
                                  picture3: favContainer.picture3,
                                  picture4: favContainer.picture4,
                                  text: favContainer.text,
                                ),
                              ),
                            ],
                          ),
                        ],
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