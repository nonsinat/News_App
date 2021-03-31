import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ListScroll extends StatelessWidget {
  final Color bgcolor;
  final Color tcolor;
  final String title;

  const ListScroll({Key key, this.tcolor, this.bgcolor, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(0, 25, 10, 0),
      decoration: BoxDecoration(
        color: bgcolor,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(color: tcolor ?? Colors.black, fontSize: 17),
        ),
      ),
    );
  }
}
