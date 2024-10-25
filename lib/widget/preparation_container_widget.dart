
import 'dart:ui';
import 'package:flutter/material.dart';

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
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Verschwommenheit
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 14 , horizontal: 14),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0.5), // Transparente Hintergrundfarbe
            borderRadius: BorderRadius.circular(16), // Runder Rahmen    
            // border: Border.all(color:
            //  Colors.white.withOpacity(0.0),
            //   width: 1
            //   ), // Weiße Umrandung
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color.fromARGB(255, 251, 251, 251),
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontFamily: "SFProDisplay",
                  shadows: [
                    Shadow(
                      blurRadius: 3,
                      color: Color.fromARGB(255, 255, 255, 255),
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: const TextStyle(
                  color: Color.fromARGB(255, 240, 239, 238),
                  fontWeight: FontWeight.w500,
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
