import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Api/movie.dart';
import '../Api/movie_services.dart';

class widget_screen extends StatelessWidget {
  final name;
  const widget_screen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 22, 22),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ImageIcon(
              AssetImage(
                'assets/netflix.png',
              ),
              color: Colors.red,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              name,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<Datamodel>(
        future: fetchTopRated(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final List<Result> users = snapshot.data!.results;

            return Padding(
              padding: const EdgeInsets.only(left: 5.0, top: 15, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ListView.builder(

                        //            scrollDirection: Axis.horizontal,
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          final user = users[index];
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        height: 170,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(9),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  user.posterPath,
                                                ),
                                                fit: BoxFit.cover),
                                            color: Colors.black),
                                        child: SizedBox(
                                          height: 5,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 13,
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        height: 170,
                                        width: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(9),
                                          color:
                                              Color.fromARGB(255, 248, 96, 96),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 9),
                                              Text(
                                                user.title,
                                                style: const TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                user.overview,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white
                                                        .withOpacity(0.9),
                                                    fontWeight:
                                                        FontWeight.w500),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 3,
                                                softWrap: true,
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Row(
                                                    // mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: Colors.black,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(6.0),
                                                          child: Text(
                                                            user.voteAverage
                                                                .toString(),
                                                            style: TextStyle(
                                                                fontSize: 19,
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    // mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                            color: Colors.black,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5)),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(6.0),
                                                          child: Text(
                                                            user.originalLanguage,
                                                            style: TextStyle(
                                                                fontSize: 19,
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                ],
              ),
            );
          } else {
            return Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
       

//  Padding(
//       padding: const EdgeInsets.only(left:5.0,top: 15),
//       child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
      
//         Expanded(
//           child: ListView.builder(
//         //            scrollDirection: Axis.horizontal,
//           itemCount: 20,
//           itemBuilder: (context,index){
//           return  Padding(
//             padding: const EdgeInsets.all(4.0),
//             child: Column(children: [
//                     Row(
            
//             children: [
//                     Expanded(
//                       flex: 2,
//                       child: Container(
//                                   height: 170,
//                                   width:130,
//                                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),
//                                   image: DecorationImage(image: NetworkImage()),
//                                   color: Colors.red
                                  
//                                   ),
//                       ),
//                     ),
//                     SizedBox(width: 9,),
//                    Expanded(
//                     flex: 4,
//                      child: Container(
//                                  height: 170,
//                                  width:130,
//                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),
//                                  color: Colors.red
                                 
//                                  ),
//                       ),
//                    ),
//                     ],),
//             ],),
//           );
//           }),
//         ),
//      const   SizedBox(height: 9,),
//       ],
//       ),
    
//     ),