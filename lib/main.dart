// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news_project/Component/CardBox.dart';
import 'package:news_project/Component/splashlottie.dart';
import 'package:news_project/pages/news_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:splash_screen_view/ColorizeAnimatedText.dart';
import 'package:splash_screen_view/ScaleAnimatedText.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:splash_screen_view/TyperAnimatedText.dart';
import 'package:news_project/Component/CardBox.dart';
import 'Component/ListScroll.dart';
import 'Component/buttonsearch.dart';
import 'Component/calendar.dart';
import 'Component/drawer.dart';
import 'Component/drawerslider.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    ));

var scaffolKey = GlobalKey<ScaffoldState>();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      home: NewsPage(),
      duration: 5000,
      imageSize: 100,
      imageSrc: "assets/images/logo1.png",
      text: "News Today",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffolKey,
        drawer: Drawer(),
        appBar: new AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  scaffolKey.currentState.openDrawer();
                },
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                )),
            title: new Text(
              "News",
              style: TextStyle(color: Colors.red, fontSize: 26),
            ),
            automaticallyImplyLeading: false),
        // backgroundColor: Colors.amber,
        body: new Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Buttonsearch(
                  hint: "Search",
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        ListScroll(
                          bgcolor: Colors.black,
                          title: "For You",
                          tcolor: Colors.white,
                        ),
                        ListScroll(title: "Covid"),
                        ListScroll(title: "Fresh News"),
                        ListScroll(title: "For You"),
                        ListScroll(title: "For You"),
                        ListScroll(title: "Covid"),
                        ListScroll(title: "Fresh News"),
                        ListScroll(title: "For You"),
                        ListScroll(title: "For You"),
                      ],
                    ),
                  ),
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                  image: Image.asset(
                    "assets/images/image.png",
                    fit: BoxFit.cover,
                  ),
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
                CardBox(
                  title: "Technology",
                  subtitle:
                      "Ministry Of Posts And Microsoft Work Together To Promote Digital Technology In Cambodia",
                ),
              ],
            ),
          ),
        ),
        // drawer: Drawer(
        //   child: Column(
        //     children: [
        //       ListTile(
        //         title: Text("data"),
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
