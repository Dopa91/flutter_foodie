import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/feautures/favorite/models/new_collection_dialog.dart';
import 'package:foodie_screen/feautures/favorite/widgets/fav_container_widget.dart';
import 'package:foodie_screen/feautures/favorite/widgets/fav_containers_list.dart';
import 'package:foodie_screen/shared/widgets/fav_button.dart';
import 'package:foodie_screen/shared/widgets/search_button.dart';

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
                      onPressed: () {
                        showNewCollection(context);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  width: 370,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: GridView.builder(
                          padding:
                              EdgeInsets.zero, // Entfernt jegliches Padding
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Anzahl der Spalten
                            crossAxisSpacing:
                                8.0, // Abstand zwischen den Spalten
                            mainAxisSpacing: 8.0, // Abstand zwischen den Reihen
                          ),
                          itemCount: favCollectionsList.length,
                          itemBuilder: (context, index) {
                            final favContainer = favCollectionsList[index];
                            return DisplayFavContainer(
                              onTap:() {},
                              picture1: favContainer.image1,
                              picture2: favContainer.image2,
                              picture3: favContainer.image3,
                              picture4: favContainer.image4,
                              text: favContainer.collectionName,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
