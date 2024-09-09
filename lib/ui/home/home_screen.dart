import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets islami/Images/default_bg.png"),
        Scaffold(
          appBar: AppBar(
            title: Text("Islami"),
          ),

          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.add)),
            ],
          ),
        ),
      ],
    );
  }
}
