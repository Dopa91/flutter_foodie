
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';

class RecipeContainer extends StatelessWidget {
  const RecipeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15), // Runder Rahmen
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8), // Verschwommenheit
        child: Container(
          height: 500, // Höhe Container
          width: 360,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.1), // Weiße Umrandung
            borderRadius: BorderRadius.circular(16), // Runder Rahmen    
            image: const DecorationImage(
              image: AssetImage("assets/images/butterchicken.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            color: const Color.fromARGB(170, 100, 62, 41).withOpacity(0.7), // Transparenz
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zutaten:",
                    style: TextStyle(
                      color: Color.fromARGB(255, 26, 14, 3),
                      fontWeight: FontWeight.w900,
                                fontSize: 22,
                                fontStyle: FontStyle.italic,
                                fontFamily: "SFProDisplay",
                    ),
                  ),
                SizedBox(height: 20),
                Row(
                  children: [
                   Text(
                     "        400 g\n"
                     "        200 g\n"
                     "         2 EL\n"
                     " 1x ca. 100 g\n"
                     "   2 ca. 10 g\n"
                     "  1x ca. 10 g\n"
                     "        200 g\n"
                     "         1 TL\n"
                     "         1 TL\n"
                     "         1 TL\n"
                     "         1/5 \n"
                     "         2 EL\n",
                     textAlign: TextAlign.end,
                     style: TextStyle(
                       color: buttonColorRecipeFeed1,
                       fontWeight: FontWeight.w500,
                                 fontSize: 18,
                                 fontStyle: FontStyle.italic,
                                 fontFamily: "SFProDisplay",
                     ),
                   ),
                  VerticalDivider( thickness: 2,
                  color: buttonColorRecipeFeed1), // noch nicht fertig!!!
                  SizedBox(height:10),
                  Text(
                    "Hünerbrustfilet \n"
                    "Naturjoghurt\n"
                    "Butter\n"
                    "Zwiebel\n"
                    "Knoblauchzehe\n"
                    "Ingwer\n"
                    "Tomatenpassata\n"
                    "Garam Masala\n"
                    "Paprikapulver\n"
                    "Kreuzkümmel\n"
                    "Pfeffer (nach Geschmack)\n"
                    "Sahne (optional)\n"
                    "Koriander (zum Garnieren)",
                    style: TextStyle(
                      color: buttonColorRecipeFeed1,
                      fontWeight: FontWeight.w500,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                fontFamily: "SFProDisplay",
                    ),
                  ),
                ],
              ),
             ],
            ),
            
          ),
        ),
      ),
      ),
    );
  }
}
