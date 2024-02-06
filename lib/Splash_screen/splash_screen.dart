import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/screens/home_2.dart';
import 'package:netflix_clone/screens/homepage.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  @override
  void initState(){
    super.initState();
       Timer(Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          MyHomePage()
                                                         )
                                       )
         );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(

          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            // *****  Animation of netflix splash screen better than an image 
          child: Lottie.asset('assets/netflix.json')
          // Image.asset('assets/splash.png',width: 150,),
          ),
        ),
      ),
    );
  }
}