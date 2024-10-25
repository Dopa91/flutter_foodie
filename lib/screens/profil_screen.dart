import "package:flutter/material.dart";
import "package:foodie_screen/config/colors.dart";
import "package:foodie_screen/feautures/profile_button.dart";

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 65, bottom: 10),
              child: Center(
                child: Text(
                  "Foodie ",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    fontFamily: "SFProDisplay",
                    color: Color.fromARGB(255, 80, 57, 50),
                    shadows: [
                      Shadow(
                        blurRadius: 5,
                        color: Colors.black,
                        offset: Offset(1, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bibi",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontFamily: "SFProDisplay",
                    color: Color.fromARGB(255, 80, 57, 50),
                  ),
                ),
                SizedBox(width: 2),
                Icon(
                  Icons.edit,
                  color: Color.fromARGB(255, 80, 57, 50),
                  size: 21,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Image.asset(
              "assets/icon/image.png",
              height: 200,
              width: 550,
              
            ),
            const SizedBox(height: 5),
             const Divider(
              thickness: 1,
              height: 20,
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(255, 103, 71, 31),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mein Profil",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                    fontFamily: "SFProDisplay",
                    color: Color.fromARGB(255, 80, 57, 50),
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 80, 57, 50), 
                  size: 27, 
                ),
              ],
            ),
            const SizedBox(height: 20),
            ProfileButton(
              text: "Gespeicherte Rezepte",
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            ProfileButton(
              text: "Konto Einstellungen",
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            ProfileButton(
              text: "Gefällt mir Angaben",
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
              height: 20,
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(255, 103, 71, 31),
            ),
            const SizedBox(height: 10),
            ProfileButton(
              text: "Abmelden",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
