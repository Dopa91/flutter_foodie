
import 'package:flutter/material.dart';
import 'package:foodie_screen/widget/preparation_container_widget.dart';

class PreparationScreen extends StatelessWidget {
  const PreparationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/chickebackround.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              PreperationContainer(
                title: "Step 1 / Marinade:",
                description: "• Hühnerbrust in Würfel schneiden.\n"
                             "• Mit Joghurt, Salz, Pfeffer, Garam Masala und Kreuzkümmel marinieren.\n"
                             "• Mindestens 30 Minuten ziehen lassen.",
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
              ),
              // Tipps Container
              PreperationContainer(
                title: "Tipps:",
                description: "Für eine scharfe Variante mehr Chili verwenden.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
