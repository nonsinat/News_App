import 'package:flutter/material.dart';
import 'package:news_project/models/article_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatefulWidget {
  final Project user;

  const DetailPage({Key key, this.user}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: _buildBody,
    );
  }

  get _buildAppBar {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: Colors.white,
      title: Text(
        widget.user.title,
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Colors.black,
            ))
      ],
    );
  }

  get _buildBody {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "${widget.user.img}",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "${widget.user.title}",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'RaleWayLight',
                      color: Color(0xFF082796),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.user.date}",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffC4C4C4)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: InkWell(
                      onTap: () {
                        print("object");
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "${widget.user.comment}",
                              style: TextStyle(color: Colors.red),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "comments",
                              style: TextStyle(fontFamily: 'RaleWayBold'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0xFF082796),
                      ),
                    ),
                    child: IconButton(
                      iconSize: 20,
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Color(0xFF082796),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0xFF082796),
                      ),
                    ),
                    child: IconButton(
                      iconSize: 20,
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.envelope,
                        color: Color(0xFF082796),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0xFF082796),
                      ),
                    ),
                    child: IconButton(
                      iconSize: 20,
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Color(0xFF082796),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF082796)),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      iconSize: 20,
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.share,
                        color: Color(0xFF082796),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 8.0, right: 8.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "${widget.user.info}",
                      style:
                          TextStyle(fontSize: 18, fontFamily: 'RaleWayeLight'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "${widget.user.info}",
                      style:
                          TextStyle(fontSize: 18, fontFamily: 'RaleWayeLight'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
