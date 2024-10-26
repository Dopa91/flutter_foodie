import "package:flutter/material.dart";
import "package:foodie_screen/config/colors.dart";
import "package:foodie_screen/feautures/login_button.dart";
import "package:foodie_screen/feautures/buttom_navigator.dart";
import "package:foodie_screen/feautures/mail_button.dart";
import "package:foodie_screen/feautures/password_button.dart";
import "package:foodie_screen/widget/richtlinien_widget.dart";


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              backroundColor2,
              backroundColor1,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
      //  child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Padding(
                padding: const EdgeInsets.only(top: 65, bottom: 10),
                child: Center(
                  child: Text(
                    "Foodie",
                    style: Theme.of(context).textTheme.titleLarge,
                  
                  ),                        
                  //style: Theme.of(context).textTheme.titleLarge   
                ),
              ),
               const Text(
              "Erstelle dein kostenloses\n            Rezeptbuch",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                 fontFamily: "SFProDisplay",
                 fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 80, 57, 50),
              ),
            ),
              const SizedBox(height: 20),
              const Divider(
                thickness: 0.9,
                height: 20,
                indent: 20, // abstand links
                endIndent: 20, // abstand rechts
                color: Color.fromARGB(255, 103, 71, 31),
              ),
              const MailButton(text:"E-Mail"),
              const MailButton(text: "Username"),
              const PasswordButton(text: "Password"),
              const PasswordButton(text: "Repeat Password"),
              const SizedBox(height: 20),
               const Divider(
                thickness: 0.9,
                height: 20,
                indent: 20, // abstand links
                endIndent: 20, // abstand rechts
                color: Color.fromARGB(255, 103, 71, 31),
               ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoginButton(
                text: "Sign Up!",
                onPressed: () {Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => const ButtonNavigator( 
                      )
                      )
                );
                },
               ),
              ),
               const SizedBox(height: 30),
              Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
      //  border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 6,
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          print("Google");
        },
        child: Image.asset(
          "assets/icon/google.png",
          height: 30,
        ),
      ),
    ),
    const SizedBox(width: 20),
    Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(12),
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 6,
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          print("Apple");
        },
        child: Image.asset(
          "assets/icon/Apple_logo_white.svg.png",
          height: 30,
                  ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const RichtlinienWidget(),
          ],
        ),
      ),
    );
  }
}