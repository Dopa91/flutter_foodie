import "package:flutter/material.dart";
import "package:foodie_screen/config/colors.dart";
import "package:foodie_screen/feautures/search_button.dart";


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
        child: const Padding(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            children: [
              SearchButton(text: "Was möchtest du heute kochen?"),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
