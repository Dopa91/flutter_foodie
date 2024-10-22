import 'package:flutter/material.dart';

class PasswordButton extends StatelessWidget {
  const PasswordButton({
    super.key, required this.text
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            obscureText: true, // text unsichtbar
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              //helperText: "forgot Password",
              hintText: text,
              hintStyle: const TextStyle(fontSize: 12, ),
              filled: true,
              fillColor: const Color.fromARGB(255, 232, 196, 164),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
