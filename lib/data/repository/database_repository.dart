
import 'package:foodie_screen/feautures/discover/widgets/spot_widget.dart';
import 'package:foodie_screen/feautures/feed/models/food_item.dart';

abstract class DatabaseRepository {
  // Einen User zur App hinzufügen (registrieren)
  Future<void> addUser(String user); // ich habe erstmal einen String draus gemacht 

  // Daten eines Users anpassen
  Future<void> editUser(String user); // ich habe erstmal einen String draus gemacht 

  // Logindaten eines Benutzers überprüfen
  Future<bool>checkUserCredentials(String userName, String password, String email); // ich habe erstmal einen String draus gemacht 

   // Benutzer löschen
  Future<void> removeUser(String recipe);

  //  Rezept zu Fav hinzufügen
  //  Future<void> Favc(Recipe newRecipe);

  // Alle Rezepte abrufen
   Future<List<FoodItem>> getAllRecipes();

  // Rezept löschen
  Future<void> removeRecipe(String recipe);

  // Portionsmenge eines Rezepts ändern
  Future<void> PortionCounter(String recipe, int newPortionSize);

  // Beliebte Rezepte abrufen
   Future<List<SpotWidget>> getPopularRecipes();

  // Kategorien abrufen
  Future<List<String>>  getCategories();

  // // Kategorie abrufen
  //  Future<List<CategoryWidget>> getCategory(String category);

  // Rezeptanleitung abrufen
  Future<String> PreparationContainer(String title, String description);
}
