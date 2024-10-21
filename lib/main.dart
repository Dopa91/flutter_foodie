import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: Scaffold (
        
        body: Center(
          
          child: LoginScreen(),
        ),
      ),
    );
  }
}

/// login- Screen
/// Braucht E-Mail Adresse und Passwort
/// -> Texteingabefelder
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          // Zentriert die Elemente vertikal in der Colum.
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 70),
            const WelcomeText(),
            Container(height: 300),
            Container(height: 5),
            const TextField(),
            Container(height: 33),
            const ElevatedButton(onPressed: null, child: Text("   E-Mail   ")),
            Container(height: 20),
            const ElevatedButton(onPressed: null, child: Text("Passwort")),
            Container(height: 20),
            const ElevatedButton(onPressed: null, child: Text("Anmelden")),
            Container(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: null, child: Text(" A ")),
                ElevatedButton(onPressed: null, child: Text(" G ")),
                ElevatedButton(onPressed: null, child: Text(" F "))
              ],
            ),
            const TextField(),
            Container(height: 20),
          ],
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "<           Foodie           ",
      textAlign: TextAlign.start,
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(225, 226, 25, 25)),
    );
  }
}
