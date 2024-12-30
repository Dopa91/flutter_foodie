import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/data/repository/auth_repository.dart';
import 'package:provider/provider.dart';


//! Abmelde Button
class SignOutButton extends StatefulWidget {
  const SignOutButton({
    super.key, required this.text, 
  });

  final String text;


  @override
  State<SignOutButton> createState() => _SignOutButtonState();
}

class _SignOutButtonState extends State<SignOutButton> {

    
  @override
  Widget build(BuildContext context) {
    final authRepository=context.read<AuthRepository>();
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () => authRepository.signOut(),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
          backgroundColor: signInBtnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          widget.text,style: const TextStyle(
            color: Color.fromARGB(255, 45, 25, 7),
            fontWeight: FontWeight.w600,
            fontSize: 14,
            fontStyle: FontStyle.italic,
            fontFamily: "SFProDisplay",
            ),
          ),
      ),
    );
  }
}
  

                //          TextStyle(
                //                 color: Color.fromARGB(255, 234, 220, 208),
                //  fontWeight: FontWeight.w600,
                //                 fontSize: 18,
                //                 fontStyle: FontStyle.italic,
                //                 fontFamily: "SFProDisplay",
                //               ),
                //             ),