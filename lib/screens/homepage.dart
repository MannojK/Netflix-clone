import 'package:flutter/material.dart';
import 'package:netflix_clone/Api/api_screen.dart';
import 'package:netflix_clone/Api/movie.dart';
import 'package:netflix_clone/Api/movie_services.dart';

import 'package:netflix_clone/screens/widgets_screen.dart';

import '../Api/multiple_data.dart';
import '../utils/col.dart';
import '../utils/widget_builder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  void ontap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var device_height = MediaQuery.of(context).size.height;
    var device_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: false,

          // expandedHeight: 500,
          backgroundColor: Colors.black,
          leading: Image.asset(
            'assets/netflix.png',
            scale: 15,
          ),
          actions: [
            MaterialButton(
                child: const InkWell(
                    child: Text(
                  'TV Shows ',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
            MaterialButton(
                child: Text(
                  'Movies ',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const widget_screen(
                                name: 'Movies',
                              )));
                }),
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child: MaterialButton(
                  child: Text(
                    ' My List ',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => widget_screen(
                                  name: 'Yours List',
                                )));
                  }),
            ),
          ],
        ),

        //                                     **** MAIN IMAGE OF THE SCREEN
        SliverToBoxAdapter(
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/mh_2.png',
                  scale: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                    alignment: Alignment.bottomCenter,
                    constraints: BoxConstraints(
                      minHeight: 609,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                   Column(
            children: [
              widget_builder(
                title: "Popular Movies ",
                function: fetchPopular(),
              ),
              widget_builder(
                title: " Top Rated ",
                function: fetchTopRated(),
              ),
              widget_builder(
                title: " Upcoming ",
                function: fetchUpcoming(),
              ),
              widget_builder(
                title: " Now Playing ",
                function: fetchNowPlaying(),
              ),
              widget_builder(
                title: " Discover More ",
                function: fetchDiscover(),
              ),
             
            ],
        );
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                )),
                            Text(
                              'My List',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        MaterialButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/play.png',
                                scale: 27,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Play'),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                )),
                            Text(
                              'My List',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
        //  ****   LIST OF  MOST POPULAR SERIES

        SliverToBoxAdapter(
          child: Column(
            children: [
              widget_builder(
                title: "Popular Movies ",
                function: fetchPopular(),
              ),
              widget_builder(
                title: " Top Rated ",
                function: fetchTopRated(),
              ),
              widget_builder(
                title: " Upcoming ",
                function: fetchUpcoming(),
              ),
              widget_builder(
                title: " Now Playing ",
                function: fetchNowPlaying(),
              ),
              widget_builder(
                title: " P Popular ",
                function: fetchPersonPopular(),
              ),
            ],
          ),
        ),
SliverToBoxAdapter(
  child: 
  Column(children: [
              widget_builder(
                title: " Discover More ",
                function: fetchDiscover(),
              ),

  ]),
)

      ]),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          backgroundColor: Colors.black,
          elevation: 10,
          currentIndex: selectedIndex,
          iconSize: 25,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.live_tv_sharp,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: '',
            ),
          ]),
    );
  }
}

// ****  USE THE CONTAINER TO STACK UPON THE IMAGE WITH THE TEXT
