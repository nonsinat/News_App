import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_project/Component/drawerslider.dart';
import 'package:news_project/pages/news_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyApp2()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 400,
                  height: 400,
                  child: Column(
                    children: [
                      Lottie.asset("assets/splash/splashnews.json"),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Text(
                "Last published 2nd Aug, 2020",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
