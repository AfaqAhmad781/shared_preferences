import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preference/home_screen.dart';
import 'package:shared_preference/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();

   isLogin();
  }

   void isLogin () async {
   SharedPreferences sp = await SharedPreferences.getInstance();
   bool isLogin = sp.getBool('isLogin') ?? false ;
   if (isLogin){
    Timer(Duration(seconds: 3), () {
    Navigator.pushReplacement(context,
    MaterialPageRoute (builder: (context) => Homescreen(),)
    );
   });
   }
   else {
    Timer(Duration(seconds: 3), () {
    Navigator.pushReplacement(context,
    MaterialPageRoute (builder: (context) => LoginScreen(),)
    );
   });
   }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage('https://images.pexels.com/photos/3778179/pexels-photo-3778179.jpeg')
        ),
    );
  }
}