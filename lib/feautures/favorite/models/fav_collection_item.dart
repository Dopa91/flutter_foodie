import 'package:foodie_screen/feautures/feed/models/food_item.dart';

class FavCollection {
  String collectionName;
  List<FoodItem> recipes;
  final String image1;
  final String image2;
  final String image3;
  final String image4;

  FavCollection({
    required this.collectionName,
    required this.recipes,
    required this.image1, 
    required this.image2, 
    required this.image3, 
    required this.image4, 
  });
}
