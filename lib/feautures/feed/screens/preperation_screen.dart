import 'package:flutter/material.dart';
import 'package:foodie_screen/feautures/feed/widgets/preparation_container_widget.dart';

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
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Zubereitung:",
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontFamily: "SFProDisplay",
                      decoration: TextDecoration.underline, 
                      decorationColor:Color.fromARGB(255, 246, 246, 246),
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Color.fromARGB(255, 203, 197, 191),
                        offset: Offset(1, 1),

                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              PreparationContainer(
                title: "Step 2 / Zwiebel & Gewürze anbraten:",
                description: "• Butter in einer Pfanne erhitzen.\n"
                             "• Zwiebel, Knoblauch und Ingwer hinzufügen.\n"
                             "• Paprikapulver und Chili dazugeben.",
              ),
              PreparationContainer(
                title: "Step 3 / Hähnchen braten:",
                description: "• Marinierte Hühnerstücke in die Pfanne geben.\n"
                             "• Bis sie goldbraun sind.",
              ),
              PreparationContainer(
                title: "Step 4 / Sauce zubereiten:",
                description: "• Tomatenpassata hinzufügen.\n"
                             "• Gut vermischen und nach Belieben mit Sahne \nverfeinern.\n"
                             "• Mit Salz und Pfeffer abschmecken.",
              ),
              PreparationContainer(
                title: "Step 5 / Anrichten:",
                description: "• Mit frischem Koriander garnieren.\n"
                             "• Am besten mit Reis oder Naan-Brot servieren.",
              ),
              SizedBox(height: 20),
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
                      decoration: TextDecoration.underline, 
                      decorationColor:Color.fromARGB(255, 203, 20, 20),
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
                " Guten\nAppetit!",
                style: TextStyle(
                  fontSize: 70,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  fontFamily: "SFProDisplay",
                  shadows: [
                    Shadow(
                      blurRadius: 10,
                      color: Color.fromARGB(255, 255, 255, 255),
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
