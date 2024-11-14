import 'package:flutter/material.dart';

class FavButton extends StatelessWidget {
  const FavButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 2),
            blurRadius: 16,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,style:  TextStyle(
                                color: Color.fromARGB(255, 255, 252, 250),
                                fontWeight: FontWeight.w600,
                                fontSize: 15.7,
                                fontStyle: FontStyle.italic,
                                fontFamily: "SFProDisplay",
                              ),
                            ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          backgroundColor: const Color.fromARGB(255, 190, 155, 124),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}