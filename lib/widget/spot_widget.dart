import 'package:flutter/material.dart';

class SpotWidget extends StatelessWidget {
    SpotWidget({
    super.key, required this.text, required this.picture
  });

String text;
String picture;

  @override
  Widget build(BuildContext context) {
    return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          picture,
          height: 130,
          fit: BoxFit.cover,
          width: 180,
        ),
      ),
      Container(
        width: 180,
        height: 50,
        decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic,
          fontFamily: "SFProDisplay",               
          ),
        ),
        ),
    ],
   );
  }
}
