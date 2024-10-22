import 'package:flutter/material.dart';
import 'package:foodie_screen/mainscreen/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Foodie",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          fontFamily: "SFProDisplay"),
      home: const MainScreen(),
    );
  }
}
