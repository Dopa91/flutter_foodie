import 'package:flutter/material.dart';

ThemeData myTheme= ThemeData(textTheme: const TextTheme(
  titleLarge: TextStyle(                                 //1
                      fontSize: 70,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                      fontFamily: "SFProDisplay",
                      color: Color.fromARGB(255, 80, 57, 50),shadows:[
                        Shadow(
                          blurRadius: 10,
                          color: Colors.black,
                          offset: Offset(4, 2)),
                        
                      ],
                    ),                  
titleMedium: TextStyle(fontWeight: FontWeight.bold),   // 2

             
),
scaffoldBackgroundColor: Colors.transparent,   // 3
fontFamily: "SFProDisplay");




