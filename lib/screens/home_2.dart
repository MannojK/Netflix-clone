import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/col.dart';

class home_2 extends StatefulWidget {
  const home_2({super.key});

  @override
  State<home_2> createState() => _home_2State();
}

class _home_2State extends State<home_2> {
  @override
  Widget build(BuildContext context) {
    var device_height = MediaQuery.of(context).size.height;
    var device_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            //2
            SliverAppBar(
              backgroundColor: Colors.black,
              leading: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Image.asset(
                  'assets/netflix.png',
                  scale: 15,
                ),
              ),
              expandedHeight: 600.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  alignment: Alignment.center,
                  // fit: StackFit.expand,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/mh_2.png',
                        fit: BoxFit.fill,
                        scale: 1,
                      ),
                    
                    ),
                    Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Container(
                  alignment: Alignment.bottomCenter,
                   constraints: BoxConstraints(minHeight: 767),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
               IconButton(onPressed: (){
            
                          }, icon: Icon(Icons.add,color: Colors.white,)),
                        

                          Text('My List',style: TextStyle(color: Colors.white,),),
                          Text(' Info',style: TextStyle(color: Colors.white,),)
                    ],
                  ),
                  
                  ),
                  
            ),
                  ],
                ),
              ),
              actions: [
                MaterialButton(
                    child: const InkWell(
                        child: Text(
                      'TV Shows ',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )),
                    onPressed: () {}),
                MaterialButton(
                    child: Text(
                      'Movies ',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: MaterialButton(
                      child: Text(
                        ' My List ',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      onPressed: () {}),
                ),
              ],
            ),
            //3

SliverToBoxAdapter(
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
                padding: const EdgeInsets.all(6.0),
                child: Container(
                height: 67,
                width: 120,
                decoration: BoxDecoration(color: Color.fromARGB(255, 255, 0, 0),borderRadius: BorderRadius.circular(10)),
                ),
              );
              }),
            ),
          ),
  // child: Column(children: [
  //   Row(
  //     children: [
  //       SingleChildScrollView(
  //         child: Container(
  //         height: 100,
  //         width: 79,
  //         decoration: BoxDecoration(
  //          borderRadius: BorderRadius.circular(15),
  //          image: DecorationImage(image: AssetImage('assets/Dark.jpg')),
  //         ),
  //         ),
  //       ),
  //     ],
  //   )
  // ]),
),
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (_, int index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Container(
            //           height: 100,
            //           width: 140,
            //           decoration: BoxDecoration(
            //               color: Colors.red,
            //               borderRadius: BorderRadius.circular(15)),
            //         ),
            //       );
            //     },
            //     childCount: 20,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
