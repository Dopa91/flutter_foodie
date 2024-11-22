
// import 'package:foodie_screen/feautures/discover/widgets/category_widget.dart';
import 'package:foodie_screen/feautures/discover/widgets/spot_widget.dart';
import 'package:foodie_screen/feautures/feed/models/food_data.dart';
import 'package:foodie_screen/feautures/feed/models/food_item.dart';

import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {

   List<String> users = ["beyz", "6161"];


// Future<List<FoodItem>> futureRecipe()async{
//      await Future.delayed(const Duration(seconds: 3)); // Simulieren Datenabfrage
//      return foodRecipe;
//   }

  final List<String> categories = ["Low Carb", "Veggie", "schnell", "Season"];

  @override
  Future<void> addUser(String user) async {
    await Future.delayed(const Duration(milliseconds: 1));
    // überprüfen ob user in der Liste bereits existiert
    users.add(user);
  }


  @override
  Future<void> editUser(String user) async {
    Future.delayed(const Duration(seconds: 1));
    int index = users.indexOf(user);
    if (index == -1) {
      Exception("Benutzer nicht gefunden");
    }
    users[index] = user; 
  }

  // Logindaten überprüfen
  @override
  Future<bool> checkUserCredentials(String userName, String password, String email) async {
    await Future.delayed(const Duration(seconds: 3)); 
    return users.contains(userName);
  }

  // Benutzer löschen
  @override
  Future<void> removeUser(String user) async {
    users.remove(user);
  }

  // Rezept zu Favoriten hinzufügen
  // Future<void> addRecipeToFavorites(String userId, FoodItem recipe) async {}

  // Alle Rezepte abrufen
  @override
  Future<List<FoodItem>> getAllRecipes() async {
    await Future.delayed(const Duration(seconds: 3)); 
    return foodRecipe;
  }

  // Rezept löschen
@override
  Future<void> removeRecipe(String recipe) async {
    await Future.delayed(const Duration(seconds: 3)); 
    foodRecipe.remove(foodRecipe);
  }

  // Beliebte Rezepte abrufen
  @override
  Future<List<SpotWidget>> getPopularRecipes() async {
    return [
      SpotWidget(text: "Pizza Caprese", picture: "assets/images/pizza.png"),
      SpotWidget(text: "Sushi", picture: "assets/images/sushi.png"),
    ];
  }

  // Kategorien abrufen und zurückgeben
  @override
  Future<List<String>> getCategories() async {
    await Future.delayed(const Duration(seconds: 3)); 
    return [];
  }

  // // Kategorie abrufen und zuruckgeben
  // @override
  // Future<List<String>> getCategory(String category) async {
  //   await Future.delayed(const Duration(seconds: 3)); 
  //  return [];
  // }

  
   @override
  Future<String> getRecipeInstructions(String recipeName) async {
    await Future.delayed(const Duration(seconds: 1)); 
    return "Step 1 / Zwiebel & Gewürze anbraten:\n"
           "• Butter in einer Pfanne erhitzen.\n"
           "• Zwiebel, Knoblauch und Ingwer hinzufügen.\n"
           "• Paprikapulver und Chili dazugeben.";
  }
  
  @override
  Future<void> changeRecipePortion(String recipe, int newPortionSize) async{
    await Future.delayed(const Duration(seconds: 1)); 
  }
  

  


}