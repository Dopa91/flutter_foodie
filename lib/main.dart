import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodie_screen/config/themes.dart';
import 'package:foodie_screen/data/repository/database_repository.dart';
import 'package:foodie_screen/data/repository/shared_preferences_database.dart';
import 'package:foodie_screen/feautures/authentification/screens/main_screen.dart';
import 'package:foodie_screen/firebase_options.dart';
import 'package:provider/provider.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,

);
  runApp(MultiProvider(providers: [
    Provider<DatabaseRepository>(create: (context)=> SharedPreferencesDatabase()
    ),
  ],
    child: const MyApp()));
}

// void main() async {
  
//   final repository = MockDatabase();
//   runApp(MyApp( repository: repository));
  
// }
class MyApp extends StatelessWidget {
 const MyApp({super.key});

//final DatabaseRepository repository= MockDatabase();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Foodie",
      theme: myTheme,
      home:  const MainScreen(),
    );
  }
}
