import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final Image image;

  const CardBox({Key key, @required this.title, this.subtitle, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Container(
                    child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        title,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'RaleWayeBold',
                          color: Color(0xFF082796),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'RaleWayBold',
                          color: Color(0xFF656565),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
              Container(
                // width: MediaQuery.of(context).size.width,
                // height: 300,
                child: image ??
                    Image(
                      image: AssetImage("assets/images/logo1.png"),
                      fit: BoxFit.cover,
                      width: 300,
                      height: 100,
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.speaker_notes_outlined))
                      ],
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
