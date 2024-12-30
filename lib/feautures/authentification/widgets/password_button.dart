import 'package:flutter/material.dart';

class PasswordButton extends StatefulWidget {
  const PasswordButton({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<PasswordButton> createState() => _PasswordButtonState();
}

class _PasswordButtonState extends State<PasswordButton> {
   bool _isCurrentPasswordVisible = true;
  final passwordController = TextEditingController();

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
        child: Stack(
          children: [ 
           
             TextField(
                controller: passwordController,
            obscureText: _isCurrentPasswordVisible, 
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color.fromARGB(255, 45, 39, 39),
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontStyle: FontStyle.italic,
               fontFamily: "SFProDisplay",
            ),
            decoration: InputDecoration(
              hintText: widget.text,
              hintStyle: const TextStyle(
                fontSize: 12,
                fontFamily: "SFProDisplay", 
              ),
              filled: true,
              fillColor: Colors.transparent, 
              border: InputBorder.none, 
            ),
          ),
           Positioned( right: 10,
             child: IconButton( alignment: Alignment.center,
                  icon: Icon(
                    _isCurrentPasswordVisible
                        ? Icons.visibility_off // das muss off  damit es in der richtigen reihenfolge ist 
                        : Icons.visibility,
                    color: const Color.fromARGB(255, 45, 39, 39), size: 18,
                  ),
                  onPressed: () {
                    setState(() {
                      _isCurrentPasswordVisible = !_isCurrentPasswordVisible;
                    });
                  },
                ),
           ),
          ],
        ),
      ),
    );
  }
}
