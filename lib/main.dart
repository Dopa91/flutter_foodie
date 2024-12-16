import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodie_screen/config/themes.dart';
import 'package:foodie_screen/data/repository/database_repository.dart';
import 'package:foodie_screen/data/repository/mock_database.dart';
import 'package:foodie_screen/feautures/authentification/screens/main_screen.dart';
import 'package:foodie_screen/firebase_options.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,

);
  final repository = MockDatabase();
  runApp(MyApp( repository: repository));
}

// void main() async {
  
//   final repository = MockDatabase();
//   runApp(MyApp( repository: repository));
  
// }
class MyApp extends StatelessWidget {
 MyApp({super.key, required DatabaseRepository repository});

final DatabaseRepository repository= MockDatabase();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Foodie",
      theme: myTheme,
      home:  MainScreen(repository: repository),
    );
  }
}
