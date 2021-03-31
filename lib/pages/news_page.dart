import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_project/Component/CardBox.dart';
import 'package:news_project/Component/ListScroll.dart';
import 'package:news_project/Component/buttonsearch.dart';
import 'package:news_project/models/article_model.dart';
import 'package:news_project/pages/detail_page.dart';
import 'package:news_project/repos/news_repos.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

var scaffolKey = GlobalKey<ScaffoldState>();

class _NewsPageState extends State<NewsPage> {
  Future _articleData;
  List<Project> _articleList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _articleData = readArticleData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffolKey,
      // appBar: _buildAppBar,
      body: _buildBody,
      drawer: Drawer(),
    );
  }

  get _buildAppBar {
    return AppBar(

        // key: scaffolKey,
        backgroundColor: Colors.white,
        elevation: 0.4,
        leading: IconButton(
          onPressed: () {
            scaffolKey.currentState.openDrawer();
          },
          icon: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.grey,
            ),
            child: Icon(
              CupertinoIcons.text_alignleft,
              color: Colors.black,
            ),
          ),
        ),
        title: new Text(
          "News",
          style: TextStyle(color: Colors.red, fontSize: 26),
        ),
        automaticallyImplyLeading: false);
  }

  get _buildBody {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Buttonsearch(
              hint: "Search here",
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 15),
                child: Row(
                  children: [
                    ListScroll(
                      title: "Today",
                      bgcolor: Color(0xFF192946),
                      tcolor: Colors.white,
                    ),
                    ListScroll(
                      title: "Fresh News",
                    ),
                    ListScroll(
                      title: "Hot News",
                    ),
                    ListScroll(
                      title: "International News ",
                    ),
                    ListScroll(
                      title: "Fresh News",
                    ),
                    ListScroll(
                      title: "Hot News",
                    ),
                    ListScroll(
                      title: "International News ",
                    )
                  ],
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(bottom: 50),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: _buildFuture,
            ),
          ],
        ),
      ),
    );
  }

  get _buildFuture {
    return FutureBuilder(
      future: _articleData,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print("Error: ${snapshot.error}");
          return Text("${snapshot.hasError}");
        }
        if (snapshot.connectionState == ConnectionState.done) {
          _articleList = snapshot.data.project;
          return _buildListView;
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  get _buildListView {
    return RefreshIndicator(
      onRefresh: () async {
        setState(() {
          _articleData = readArticleData();
        });
      },
      child: ListView.builder(
        itemCount: _articleList.length,
        itemBuilder: (context, index) {
          return _buildItem(_articleList[index]);
        },
      ),
    );
  }

  _buildItem(Project article) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      user: article,
                    ),
                  ),
                );
              },
              child: CardBox(
                title: article.title,
                subtitle: article.subtitle,
                image: Image(
                  image: NetworkImage("${article.img}"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
