
// import 'package:flutter/material.dart';
// import 'package:foodie_screen/config/colors.dart';
// import 'package:foodie_screen/shared/widgets/fav_button.dart';
// import 'package:foodie_screen/shared/widgets/search_button.dart';

// class NewCollectionScreen extends StatelessWidget {
//   const NewCollectionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               backroundColor2,
//               backroundColor1,
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 80),
//           child: Column(
//             children: [
//               const SearchButton(text: "Was möchtest du heute kochen?"),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(right: 8),
//                     child: FavButton(
//                       text: "Neue Kollektion",
//                       onPressed: () {},
//                     ),
//                   ),
//                   // IconButton(
//                   //   icon: const Icon(Icons.add, size: 40, color: Colors.black45),
//                   //   onPressed: () {},
                    
//                   // ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               SizedBox(
//                 width: 300,
//                 height: 55,
//                 child: TextField(
//                           textAlign: TextAlign.center,
//                           decoration: InputDecoration(
//                             hintText: "Name der Kollektion",
//                             hintStyle: const TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 26,
//                             fontStyle: FontStyle.italic,
//                            fontFamily: "SFProDisplay",color: Color.fromARGB(255, 21, 19, 19)),
//                             filled: true,
//                             fillColor: const Color.fromARGB(255, 255, 253, 251).withOpacity(0.7),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: BorderSide.none,
//                             ),
//                           ),
//                         ),
//               ),
//               const SizedBox(height: 20),
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Container(

//                   margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 14),
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     color: const Color.fromARGB(255, 217, 180, 180).withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
                      
//                       const SizedBox(height: 0),
//                       IconButton(
//                         icon: Transform.scale(
//                           scale:0.8,
//                           child: const Icon(Icons.add, 
//                           size: 300, 
//                           color: Colors.white 
//                         ), ),
//                         onPressed: () {
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }