import 'package:flutter/material.dart';
import 'package:frenzy_chats/homePage.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Frenzy Chats",
      home: homePage(),
    );
  }
}
