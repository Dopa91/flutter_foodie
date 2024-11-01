
import 'dart:ui';
import 'package:flutter/material.dart';

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
          height: 425, // Höhe Container
          width: 500,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.1), // Weiße Umrandung
            borderRadius: BorderRadius.circular(16), // Runder Rahmen    
            image: const DecorationImage(
              image: AssetImage("assets/images/butterchicken.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            color: Colors.transparent.withOpacity(0.5), // Transparenz
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zutaten:",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 252, 249),
                      fontWeight: FontWeight.w600,
                                fontSize: 28,
                                fontStyle: FontStyle.italic,
                                fontFamily: "SFProDisplay",
                                decoration: TextDecoration.underline, 
                                decorationColor:Color.fromARGB(255, 225, 218, 211),
                                shadows: [
                        Shadow(
                          blurRadius: 3,
                          color: Color.fromARGB(255, 255, 252, 249),
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
                       color: Color.fromARGB(255, 255, 252, 249),
                       fontWeight: FontWeight.w600,
                                 fontSize: 17,
                                 fontStyle: FontStyle.italic,
                                 fontFamily: "SFProDisplay",
                     ),
                   ),
                  SizedBox( height: 340,
                    child: VerticalDivider( thickness: 1, width: 17,
                    color: Color.fromARGB(255, 255, 252, 249)),
                  ), // noch nicht fertig!!!
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
                      color: Color.fromARGB(255, 255, 252, 249),
                      fontWeight: FontWeight.w500,
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
