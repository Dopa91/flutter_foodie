import 'package:flutter/material.dart';

class RichtlinienWidget extends StatelessWidget {
  const RichtlinienWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Indem du Foodie verwendest, stimmst du unseren Nutzungs• und Datenschutzbestimmungen zu.");
      },
    
        child: const Text(
          "Indem du Foodie verwendest, stimmst du unseren Nutzungs- und Datenschutzbestimmungen zu.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "SFProDisplay",
            color: Colors.black54, 
            fontSize: 10,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline, 
             decorationColor: Color.fromARGB(73, 0, 0, 0),
          ),
        ),
      
    );
  }
}