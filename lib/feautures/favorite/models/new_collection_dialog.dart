import 'package:flutter/material.dart';

void showNewCollection(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 237, 226, 193),
          title: const Text("Neue Kollektion erstellen",
          style: TextStyle(
            color: Color.fromARGB(255, 56, 41, 36),
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
            fontFamily: "SFProDisplay",
          ),
          ),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: "Kollektion Name",
            hintStyle: TextStyle(
              color: Color.fromARGB(255, 56, 41, 36),
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              fontFamily: "SFProDisplay",
            ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.close,
                color: Color.fromARGB(255, 56, 41, 36),
                size: 30,
                ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();  
              },
              child: const Icon(
                Icons.check,
                color: Color.fromARGB(255, 56, 41, 36),
                size: 30,
              ),
            ),
          ],
        );
      },
    );
  }
