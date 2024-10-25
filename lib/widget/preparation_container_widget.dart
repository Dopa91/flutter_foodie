
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';

class PreperationContainer extends StatelessWidget {
  final String title;
  final String description;

  const PreperationContainer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15), // Runder Rahmen
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8), // Verschwommenheit
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(150, 0, 0, 0).withOpacity(0.6), // Transparente Hintergrundfarbe
            borderRadius: BorderRadius.circular(16), // Runder Rahmen    
            border: Border.all(color: Colors.white.withOpacity(0.1), width: 1), // Weiße Umrandung
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: buttonColorRecipeFeed1,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontFamily: "SFProDisplay",
                  shadows: [
                    Shadow(
                      blurRadius: 3,
                      color: buttonColorRecipeFeed1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: const TextStyle(
                  color: buttonColorRecipeFeed1,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontFamily: "SFProDisplay",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
