import 'package:flutter/material.dart';

class MailButton extends StatelessWidget {
  const MailButton({
    super.key, required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: TextField(
        obscureText: false, // text sehen
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(
            fontSize: 13,
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 232, 196, 164),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        // textAlign: TextAlign.center,
      ),
    );
  }
}
