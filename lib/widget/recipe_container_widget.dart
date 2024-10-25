
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
          height: 455, // Höhe Container
          width: 370,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.1), // Weiße Umrandung
            borderRadius: BorderRadius.circular(16), // Runder Rahmen    
            image: const DecorationImage(
              image: AssetImage("assets/images/butterchicken.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            color: const Color.fromARGB(219, 131, 85, 61).withOpacity(0.8), // Transparenz
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zutaten:",
                    style: TextStyle(
                      color: buttonColorRecipeFeed1,
                      fontWeight: FontWeight.w600,
                                fontSize: 26,
                                fontStyle: FontStyle.italic,
                                fontFamily: "SFProDisplay",
                                shadows: [
                        Shadow(
                          blurRadius: 3,
                          color: buttonColorRecipeFeed1,
                          offset: Offset(0, 1)),
                      ],
                    ),    
                    ),
                SizedBox(height: 10),
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
                       fontWeight: FontWeight.w600,
                                 fontSize: 17,
                                 fontStyle: FontStyle.italic,
                                 fontFamily: "SFProDisplay",
                     ),
                   ),
                  VerticalDivider( thickness: 2,
                  color: buttonColorRecipeFeed1), // noch nicht fertig!!!
                 // SizedBox(height:10),
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
                      fontWeight: FontWeight.w700,
                                fontSize: 16.5,
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
