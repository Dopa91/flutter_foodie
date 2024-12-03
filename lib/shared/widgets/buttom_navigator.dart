import 'package:flutter/material.dart';
import 'package:foodie_screen/config/colors.dart';
import 'package:foodie_screen/data/repository/database_repository.dart';
import 'package:foodie_screen/feautures/discover/screens/spot_screen.dart';
import 'package:foodie_screen/feautures/favorite/screens/favorit_screen.dart';
import 'package:foodie_screen/feautures/feed/screens/feed_screen.dart';
import 'package:foodie_screen/feautures/profile/screens/profil_screen.dart'; 

class ButtonNavigator extends StatefulWidget {
const ButtonNavigator({super.key,required this.repository});
final DatabaseRepository repository;

  @override
  _ButtonNavigator createState() => _ButtonNavigator();
}
class _ButtonNavigator extends State<ButtonNavigator> {
  int _selectedIndex = 0;

  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      FeedScreen(repository: widget.repository),
       const FavoritScreen(),
      SpotScreen(repository: widget.repository),
      const ProfilScreen(),
    ];
  }

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

