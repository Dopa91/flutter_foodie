import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';


class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key, required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 0),
      child: TextField(
        obscureText: false, // text sehen
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(
            fontSize: 12,
                fontWeight: FontWeight.w600,
                 fontFamily: "SFProDisplay",
                 fontStyle: FontStyle.italic,
          ),
          filled: true,
          fillColor: searchButtonColor1,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
           // borderSide: BorderSide.none
            borderSide: const BorderSide(color: 
            Colors.white,
            width: 1),
            
            
          ),
        ),
        // textAlign: TextAlign.center,
      ),
    );
  }
}
