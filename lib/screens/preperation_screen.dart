
import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/widget/preparation_container_widget.dart';

class PreparationScreen extends StatelessWidget {
  const PreparationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/butterchicken.png"),
            fit: BoxFit.cover,
          ),
        ),    child: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox( height: 50),
             Padding(
                padding:  EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Zubereitung:",
                  style: TextStyle(
                  fontSize: 50,
                  color: buttonColorRecipeFeed1,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  fontFamily: "SFProDisplay",
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: fontColor,
                      offset:  Offset(2, 2),
                    ),
                  ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              PreperationContainer(
                title: "Step 2 / Zwiebel und Gewürze anbraten:",
                description: "• Butter in einer Pfanne erhitzen.\n"
                             "• Zwiebel, Knoblauch und Ingwer hinzufügen.\n"
                             "• Paprikapulver und Chili dazugeben.",
              ),
              PreperationContainer(
                title: "Step 3 / Hähnchen braten:",
                description: "• Marinierte Hühnerstücke in die Pfanne geben.\n"
                             "• Bis sie goldbraun sind.",
              ),
              PreperationContainer(
                title: "Step 4 / Sauce zubereiten:",
                description: "• Tomatenpassata hinzufügen.\n"
                             "• Gut vermischen und nach Belieben mit Sahne verfeinern.\n"
                             "• Mit Salz und Pfeffer abschmecken.",
              ),
              PreperationContainer(
                title: "Step 5 / Anrichten:",
                description: "• Mit frischem Koriander garnieren.\n"
                             "• Am besten mit Reis oder Naan-Brot servieren.",
              ),  SizedBox(height: 20), 
              //  Text
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tipps: ",
                      style: TextStyle(
                        color: Colors.red, 
                         fontWeight: FontWeight.w600,
                         fontStyle: FontStyle.italic,
                         fontFamily: "SFProDisplay",
                        fontSize: 18,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Für eine scharfe Variante mehr Chili verwenden.",
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                         fontStyle: FontStyle.italic,
                         fontFamily: "SFProDisplay",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Guten \nAppetit!",
                style: TextStyle(
                  fontSize: 70,
                  color: buttonColorRecipeFeed1,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  fontFamily: "SFProDisplay",
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: Color.fromARGB(255, 201, 142, 97),
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50), 
            ],
          ),
        ),
      ),
    );
  }
}
