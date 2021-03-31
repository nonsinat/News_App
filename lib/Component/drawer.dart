import 'package:flutter/material.dart';
import 'package:elastic_drawer/elastic_drawer.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return ElasticDrawer(
      mainColor: Colors.white,
      drawerColor: Color(0xff3C3F41),
      mainChild: Center(
        child: Text(
          'MAIN page',
          style: TextStyle(color: Colors.black54, fontSize: 30),
        ),
      ),
      drawerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState
                  .push(MaterialPageRoute(builder: (context) => YellowPage()));
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'YELLOW page',
                style: TextStyle(
                    color: Color(0xfff4c20d),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState
                  .push(MaterialPageRoute(builder: (context) => GreenPage()));
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Login',
                style: TextStyle(
                    color: Color(0xff3cba54),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState
                  .push(MaterialPageRoute(builder: (context) => RedPage()));
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Register ',
                style: TextStyle(
                    color: Color(0xffdb3236),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Color(0xff3cba54));
  }
}

class YellowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff4c20d),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("data"), TextField(), TextFormField()],
      ),
    );
  }
}

class RedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Color(0xffdb3236));
  }
}
