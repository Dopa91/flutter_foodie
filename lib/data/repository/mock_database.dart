
import 'package:foodie_screen/feautures/discover/widgets/category_widget.dart';
import 'package:foodie_screen/feautures/discover/widgets/spot_widget.dart';
import 'package:foodie_screen/feautures/feed/models/food_item.dart';

import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {

   List<String> users = ["beyz", "6161"];

   // Rezepte übersicht
  final List<FoodItem> recipes = [
    FoodItem(
      imagePath: "assets/images/butterchicken.png",
      imageTitle: "Butter Chicken", 
      imageSubTime: " 30 Min.",
      imagePrice:  " 2 Pers./ 16,98 € " ,
  ),
  FoodItem(
    imagePath: "assets/images/pancakes.png",
    imageTitle: "Pancakes mit Apfelsirup",
    imageSubTime: "30 Min.",
    imagePrice: "   2 Pers./ 15,98 € ",
  ),
  ];


  final List<String> categories = ["Low Carb", "Veggie", "schnell", "Season"];

 
  @override
  Future<void> addUser(String user) async {
    await Future.delayed(const Duration(milliseconds: 1)); (user) {
       Exception("Benutzer existiert bereits");
    };
    users.add(user);
  }


  @override
  Future<void> editUser(String user) async {
    Future.delayed(const Duration(milliseconds: 1));
    int index = users.indexOf(user);
    if (index == -1) {
      Exception("Benutzer nicht gefunden");
    }
    users[index] = user; 
  }

  // Logindaten überprüfen
  @override
  Future<bool> checkUserCredentials(String userName, String password, String email) async {
    await Future.delayed(const Duration(milliseconds: 3)); 
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
    await Future.delayed(const Duration(milliseconds: 3)); 
    return recipes;
  }

  // Rezept löschen
@override
  Future<void> removeRecipe(String recipe) async {
    await Future.delayed(const Duration(milliseconds: 3)); 
    recipes.remove(recipe);
  }

  // Beliebte Rezepte abrufen
  @override
  Future<List<SpotWidget>> getPopularRecipes() async {
    return [
      SpotWidget(text: "Pizza Caprese", picture: "assets/images/pizza.png"),
      SpotWidget(text: "Sushi", picture: "assets/images/sushi.png"),
    ];
  }

  // Kategorien abrufen
  @override
  Future<List<String>> getCategories() async {
    await Future.delayed(const Duration(milliseconds: 3)); 
    return categories;
  }

  // Kategorie abrufen
  @override
  Future<List<CategoryWidget>> getCategory(String category) async {
    await Future.delayed(const Duration(milliseconds: 3)); 
    return[
      const CategoryWidget(),
  
    ];
  }

  
   @override
  Future<String> getRecipeInstructions(String recipeName) async {
    await Future.delayed(const Duration(milliseconds: 3)); 
    return "Step 1 / Zwiebel & Gewürze anbraten:\n"
           "• Butter in einer Pfanne erhitzen.\n"
           "• Zwiebel, Knoblauch und Ingwer hinzufügen.\n"
           "• Paprikapulver und Chili dazugeben.";
  }
  
  @override
  Future<void> changeRecipePortion(String recipe, int newPortionSize) {
    // TODO: implement changeRecipePortion
    throw UnimplementedError();
  }
  


}