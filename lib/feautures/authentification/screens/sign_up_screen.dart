import "package:flutter/material.dart";
import "package:foodie_screen/config/colors.dart";
import "package:foodie_screen/data/repository/auth_repository.dart";
import "package:foodie_screen/feautures/authentification/widgets/foodie_button.dart";
import "package:foodie_screen/feautures/authentification/widgets/mail_button.dart";
import "package:foodie_screen/feautures/authentification/widgets/password_button.dart";
import "package:foodie_screen/feautures/authentification/widgets/richtlinien_widget.dart";
import "package:foodie_screen/feautures/feed/screens/feed_screen.dart";
import "package:provider/provider.dart";


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key}); 

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //final mailController = TextEditingController();
  
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
              MailButton(text: "E-Mail", controller: TextEditingController()),
              MailButton(text: "Username", controller: TextEditingController()),
              PasswordButton(text: "Password", controller: TextEditingController()),
              PasswordButton(text: "Repeat Password", controller: TextEditingController()),
              const SizedBox(height: 20),
               const Divider(
                thickness: 0.9,
                height: 20,
                indent: 20, // abstand links
                endIndent: 20, // abstand rechts
                color: Color.fromARGB(255, 103, 71, 31),
               ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: FoodieButton(
                text: "Sign Up!",
                // onPressed: () {Navigator.push(
                //       context, MaterialPageRoute(
                //         builder: (context) => const ButtonNavigator( 
                //       ),
                //       )
                // );
                // },
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
        onPressed: () {context.read<AuthRepository>().signInWithGoogle();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FeedScreen(),
                ));
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