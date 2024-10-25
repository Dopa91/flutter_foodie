import 'package:flutter/material.dart';

class MailButton extends StatelessWidget {
  const MailButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 196, 164),
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 4), 
              blurRadius: 6, 
            ),
          ],
        ),
        child: TextField(
          obscureText: false, 
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "SFProDisplay", 
            fontSize: 16, 
          ),
          decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            fontStyle: FontStyle.italic,
             fontFamily: "SFProDisplay",
            ),
            filled: true,
            fillColor: Colors.transparent, 
            border: InputBorder.none, 
          ),
        ),
      ),
    );
  }
}
