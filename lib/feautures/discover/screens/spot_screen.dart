import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/feautures/discover/widgets/category_widget.dart';
import 'package:foodie_screen/feautures/discover/widgets/spot_widget.dart';
import 'package:foodie_screen/shared/widgets/search_button.dart';

class SpotScreen extends StatelessWidget {
  const SpotScreen({super.key});

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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SearchButton(text: "Was möchtest du heute kochen?"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Top Kategorien",
                       style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      fontFamily: "SFProDisplay",
                        ),
                      ),
                      SizedBox(width: 150), 
                      Icon(Icons.tune, size: 26, color: Colors.white),                       
                    ],
                  ),
                ),
              ),
                     const SizedBox(height: 10),
                      const Divider(
                      thickness: 0.6,
                      height: 20,
                      indent: 20,
                       endIndent: 20,
                      color: Color.fromARGB(255, 255, 252, 247),),
                      const SizedBox(height: 10),
              
              const CategoryWidget(),
              const SizedBox(height: 10),
              const Divider(
              thickness: 0.6,
              height: 20,
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(255, 255, 252, 247),),
               const SizedBox(height: 10), 
               const Text(
                 "Aktuell beliebte Rezepte",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 24,
                  fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      fontFamily: "SFProDisplay",

                 ),
               ),
              const SizedBox(height: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SpotWidget(text: "Pizza Caprese", picture: "assets/images/pizza.png"),
                        const SizedBox(width: 10),
                        SpotWidget(text: "Sushi", picture: "assets/images/sushi.png"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SpotWidget(text: "Dumplings", picture: "assets/images/dumplings.png"),
                        const SizedBox(width: 10),
                        SpotWidget(text: "Baklava", picture: "assets/images/baklava.png"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
