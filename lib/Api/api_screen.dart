// screens/home_page.dart
import 'package:flutter/material.dart';
import 'package:netflix_clone/Api/movie.dart';

import 'movie_services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 47, 32),
      appBar: AppBar(
        title: Text('Movie Details'),
      ),
      body: FutureBuilder<List<Person>>(

future: fetchPersonPopular(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final  List   users = snapshot.data!;

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];

                return Card(
                  color: Color.fromARGB(255, 240, 112, 103),
                  shape: Border.all(style: BorderStyle.none),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(user.posterPath),
                    ),
                    title: Text(user.originalTitle),
                    subtitle: Text(user.overview,maxLines: 3,overflow: TextOverflow.ellipsis,),
                  ),
                );
              },
            );
          } else {
            return Center(child: Text('No data available'));
          }
        },
      ),
    
    );
  }
}
