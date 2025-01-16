import 'package:flutter/material.dart';
import 'package:foodie_screen/data/repository/shared_preferences_database.dart';
class DisplayFavContainer extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final String picture1;
  final String picture2;
  final String picture3;
  final String picture4;
  const DisplayFavContainer({
    super.key,
    required this.onTap,
    required this.text,
    required this.picture1,
    required this.picture2,
    required this.picture3,
    required this.picture4,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          // height: 234,
          // width: 215,
          decoration: BoxDecoration(
            color: const Color.fromARGB(200, 233, 189, 149).withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                     width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(picture1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                      width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(picture2),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                     width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(picture3),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(picture4),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      fontFamily: "SFProDisplay",
                      color: Color.fromARGB(255, 255, 249, 249),
                    ),
                  ),
                  IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Color.fromARGB(255, 255, 249, 249),
                    size: 18,
                  ),
                  onPressed: () async { 
                    await SharedPreferencesHelper.removeFavCollection();
                    },
                    
                ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}