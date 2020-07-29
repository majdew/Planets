import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:planets/planet.dart';
import 'package:planets/planetwidget.dart';

import './constants.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: gradientEndColor,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.7],
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Explore',
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 44,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      DropdownButton(
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              "Solar System",
                              style: TextStyle(
                                fontFamily: "Avenir",
                                fontSize: 24,
                                color: const Color(0x7cdbf1ff),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                        onChanged: (value) {},
                        icon: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset("assets/drop_down_icon.png"),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Swiper(
                    itemCount: planets.length,
                    itemWidth: 300,
                    pagination: SwiperPagination(
                      builder:
                          DotSwiperPaginationBuilder(activeSize: 20, space: 8),
                    ),
                    layout: SwiperLayout.STACK,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: <Widget>[
                          Column(
                            children: [
                              SizedBox(
                                height: 150,
                              ),
                              Card(
                                elevation: 8,
                                color: Colors.white,
                                child: PlanetWidget(planets[index].name,
                                    planets[index].iconImage),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(planets[index].iconImage),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(38),
              ),
              color: navigationColor,
            ),
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Image.asset("assets/menu_icon.png"),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset("assets/search_icon.png"),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset("assets/profile_icon.png"),
                  onPressed: () {},
                ),
              ],
            )),
      ),
    );
  }
}
