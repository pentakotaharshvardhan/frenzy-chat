import 'package:flutter/material.dart';
import 'package:frenzy_chats/chatScreen.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Frenzy Chats",style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.green,
      ),
      body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assests/bg.png"), fit: BoxFit.cover),
          ),
          child: chatScreen(),
      ),

    );
  }
}
