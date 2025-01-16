import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodie_screen/config/themes.dart';
import 'package:foodie_screen/data/repository/auth_repository.dart';
import 'package:foodie_screen/data/repository/database_repository.dart';
import 'package:foodie_screen/data/repository/firebase_auth_repository.dart';
import 'package:foodie_screen/data/repository/shared_preferences_database.dart';
import 'package:foodie_screen/feautures/authentification/screens/main_screen.dart';
import 'package:foodie_screen/firebase_options.dart';
import 'package:foodie_screen/shared/widgets/buttom_navigator.dart';
import 'package:provider/provider.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,

);
  runApp(MultiProvider(providers: [
    Provider<DatabaseRepository>(create: (_)=> SharedPreferencesDatabase()
    ),
    Provider<AuthRepository>(create: (_)=> FirebaseAuthRepository()
    ),
  ],
    child: MyApp()));
}

// void main() async {
  
//   final repository = MockDatabase();
//   runApp(MyApp( repository: repository));
  
// }
class MyApp extends StatelessWidget {
  MyApp({super.key});
 
 final authInstance = FirebaseAuth.instance;
 final firestoreInstance = FirebaseFirestore.instance;

//final DatabaseRepository repository= MockDatabase();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Foodie",
      theme: myTheme,
      home: Scaffold(
        body: StreamBuilder(
          stream: authInstance.authStateChanges(),
          builder: (context, snapshot) {if (snapshot.connectionState == ConnectionState.active) {
                    User? user = snapshot.data;
                    log("User Logged In: ${user != null}");
                    if (user == null) {
                      return const MainScreen(); 
                    } else {
                      return const ButtonNavigator(); // angemeldete seite 
                    }
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }

            
          },
        ),
      )
    );
  }
}
