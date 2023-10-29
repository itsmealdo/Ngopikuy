import 'package:flutter/material.dart';
import 'package:ngopikuy/screen/MainScreen.dart';
import 'package:ngopikuy/model/cafe_place.dart'; // Import model yang berisi data kafe

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainScreen(
          title: 'Ngopi Kuy',
          cafePlaceList:
              cafePlaceList), // Menambahkan cafePlaceList ke MainScreen
    );
  }
}
