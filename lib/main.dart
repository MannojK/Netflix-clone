import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/Splash_screen/splash_screen.dart';
import 'package:netflix_clone/screens/home_2.dart';
import 'package:netflix_clone/screens/upload._screen.dart';
import 'package:netflix_clone/screens/widgets_screen.dart';
import 'package:netflix_clone/utils/col.dart';
import 'package:netflix_clone/utils/widget_builder.dart';

import 'firebase_options.dart';
import 'screens/homepage.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();


// ...

await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        backgroundColor: Colors.amberAccent,
      

      ),
      home:  splash_screen(),
      // home: const MyHomePage(),
    );
  }
}