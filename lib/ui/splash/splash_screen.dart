import 'package:flutter/material.dart';
import 'package:islami_10_am/ui/home/home_screen.dart';
import 'package:islami_10_am/ui/ui_utils.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "/";
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), (){
    //   This will be executed after duration
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(getFullPathImage("splash_light.png"), fit: BoxFit.cover, width: double.infinity, height: double.infinity,),
    );
  }
}
