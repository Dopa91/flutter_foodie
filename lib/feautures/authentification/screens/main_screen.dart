import "package:flutter/material.dart";
import "package:foodie_screen/config/colors.dart";
import "package:foodie_screen/data/repository/auth_repository.dart";
import "package:foodie_screen/feautures/authentification/screens/sign_up_screen.dart";
import "package:foodie_screen/feautures/authentification/widgets/foodie_button.dart";
import "package:foodie_screen/feautures/authentification/widgets/mail_button.dart";
import "package:foodie_screen/feautures/authentification/widgets/password_button.dart";
import "package:foodie_screen/feautures/authentification/widgets/richtlinien_widget.dart";
import "package:provider/provider.dart";


class MainScreen extends StatelessWidget {
  const MainScreen({super.key,});

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
                    style: Theme.of(context).textTheme.titleLarge                 //Theme                           
                  ),
                ),
              ),
              Image.asset(
                "assets/images/iconfoodie1.png",
                height: 200,
                width: 600,
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
              const SizedBox(height: 0),
              const PasswordButton(text: "Password"),
              const SizedBox(height: 5),
              const SizedBox(height: 4),
              const Divider(
                thickness: 0.9,
                height: 20,
                indent: 20, // abstand links
                endIndent: 20, // abstand rechts
                color: Color.fromARGB(255, 103, 71, 31),
              ),
             const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: FoodieButton(
                text: "Sign in!",
                // onPressed: () {
                
                // },
               ),
              ),
              const SizedBox(height: 5),
              GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()));
              },
              child: const Text(
                "No account? Sign up.",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(height: 20),
              Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(12),
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
          context.read<AuthRepository>().signInWithGoogle();
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
              )
           );
          }
         }
