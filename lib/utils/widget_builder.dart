import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Api/movie.dart';
import '../Api/movie_services.dart';

class widget_builder extends StatelessWidget {
final title;
final function;
  widget_builder({super.key,required this.title,required this.function});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Person>>(
        future: function,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            // final List<Result> users = snapshot.data!.results;
final users = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 9.0),
                    child: SizedBox(
                      height: 190,
                      // width: 60,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            final user = users[index];
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 67,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image:NetworkImage(user.profilePath), fit: BoxFit.cover),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                ],
              ),
            );
          } else {
            return Text('Bi=');
          }
        });
  }
}
