// import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_project/pages/news_page.dart';

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  GlobalKey<SliderMenuContainerState> _key =
      new GlobalKey<SliderMenuContainerState>();
  String title;

  @override
  void initState() {
    title = "News";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SliderMenuContainer(
          appBarColor: Colors.white,
          key: _key,
          isTitleCenter: false,
          sliderMenuOpenSize: 350,
          title: Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.red,
            ),
          ),
          sliderMain: NewsPage(),
          sliderMenu: Drawer(
            child: ListView(
              children: [
                Container(
                  color: Color(0xff647FB2),
                  height: 350,
                  child: DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 90),
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/image.png",
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Username",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color(0xff647FB2),
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Container(
                    margin: EdgeInsets.only(left: 30),
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () {
                            print(" sdf");
                          },
                          focusColor: Colors.black,
                          leading: Icon(
                            FontAwesomeIcons.portrait,
                            color: Colors.white,
                            size: 28,
                          ),
                          title: Text(
                            "Profile",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 21, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.nature_people_outlined,
                            color: Colors.white,
                            size: 28,
                          ),
                          title: Text(
                            "Notification",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 21, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ListTile(
                          leading: Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.white,
                            size: 28,
                          ),
                          title: Text(
                            "FAVORITES",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 21, color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ListTile(
                          leading: Icon(
                            FontAwesomeIcons.personBooth,
                            color: Colors.white,
                            size: 28,
                          ),
                          title: Text(
                            "FRIENDS",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                                fontFamily: "RalewayBold"),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 28,
                          ),
                          title: Text(
                            "SETTINGS",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                                fontFamily: "RalewayBold"),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Colors.white,
                            size: 28,
                          ),
                          title: Text(
                            "LOG OUT",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontFamily: "RalewayBold"),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
