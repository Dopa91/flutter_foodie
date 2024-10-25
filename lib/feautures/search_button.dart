import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 0),
      child: Container(
        decoration: BoxDecoration(
          color: searchButtonColor1,
          borderRadius: BorderRadius.circular(25),
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
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            fontFamily: "SFProDisplay",
            fontStyle: FontStyle.italic,
          ),
          decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: "SFProDisplay",
              fontStyle: FontStyle.italic,
            ),
            filled: true,
            fillColor: Colors.transparent,
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
              
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Icon(
                Icons.search,
                color: Colors.black54, 
              ),
            ),
          ),
        ),
      ),
    );
  }
}