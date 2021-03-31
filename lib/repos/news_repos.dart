import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:news_project/models/article_model.dart';

const Android = "10.0.2.2";
const iOS = "localhost";
const LivePhone = "192.168.137.1"; //goto cmd type ipconfig looking IPv4
Future<ArticalModel> readArticleData() async {
  String address = Android;

  String url = "http://$address/finalmobile/read.php";

  http.Response response =
      await http.get("http://10.0.2.2/finalmobile/read.php");

  if (response.statusCode == 200) {
    return compute(articalModelFromJson, response.body);
  } else {
    throw Exception("Error while reading data");
  }
}
