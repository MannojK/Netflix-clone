import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class col extends StatelessWidget {
  List <dynamic> listpages = [];
   col({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: SizedBox(
              height: 170,
              // width: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
              itemCount: 100,
              itemBuilder: (context,index){
              return   Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                height: 67,
                width: 90,
                decoration: BoxDecoration(color: Color.fromARGB(255, 255, 0, 0),borderRadius: BorderRadius.circular(15)),
                ),
              );
              }),
            ),
          ),
        ));
  }
}
