import "package:flutter/material.dart";
import "package:foodie_screen/config/colors.dart";
import "package:foodie_screen/data/repository/auth_repository.dart";
import "package:foodie_screen/feautures/authentification/screens/sign_up_screen.dart";
import "package:foodie_screen/feautures/authentification/widgets/mail_button.dart";
import "package:foodie_screen/feautures/authentification/widgets/password_button.dart";
import "package:foodie_screen/feautures/authentification/widgets/richtlinien_widget.dart";
import "package:foodie_screen/shared/widgets/buttom_navigator.dart";
import "package:provider/provider.dart";

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    Future<void> login() async {
      final authRepo = Provider.of<AuthRepository>(context, listen: false);
      try {
        await authRepo.signInWithEmailAndPassword(
          emailController.text.trim(),
          passwordController.text.trim(),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ButtonNavigator()),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login fehlgeschlagen: ${e.toString()}")),
        );
      }
    }

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
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(255, 103, 71, 31),
            ),
            MailButton(
              text: "E-Mail",
              controller: emailController,
            ),
            const SizedBox(height: 0),
            PasswordButton(
              text: "Password",
              controller: passwordController,
            ),
            const SizedBox(height: 5),
            const Divider(
              thickness: 0.9,
              height: 20,
              indent: 20,
              endIndent: 20,
              color: Color.fromARGB(255, 103, 71, 31),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: login,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                backgroundColor: signInBtnColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Sign in!",
                style: TextStyle(
                  color: Color.fromARGB(255, 45, 25, 7),
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  fontFamily: "SFProDisplay",
                ),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
              child: const Text(
                "No account? Sign up.",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
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
      ),
    );
  }
}
