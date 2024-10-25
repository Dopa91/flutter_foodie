import 'package:flutter/material.dart';
import 'recipe_screen.dart';
import 'package:foodie_screen/config/colors.dart'; 

class ButtonNavigator extends StatefulWidget {
  const ButtonNavigator({super.key});

  @override
  _ButtonNavigator createState() => _ButtonNavigator();
}

class _ButtonNavigator extends State<ButtonNavigator> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const FeedScreen(),
    const RecipeScreen(foodItem: "Favoriten"),
    const RecipeScreen(foodItem: "Entdecken"),
    const RecipeScreen(foodItem: "Profil"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: searchButtonColor1, 
        fixedColor: const Color.fromARGB(255, 174, 90, 11), 
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: "Heute"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoriten"),
          BottomNavigationBarItem(icon: Icon(Icons.public), label: "Entdecken"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Feed Screen"), // 
    );
  }
}

