import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';

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
        )
      ),
    );
  }
  }