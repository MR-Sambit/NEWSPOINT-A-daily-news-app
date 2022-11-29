// https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=d322449fd2b346269948fe5631bfb59b
// 4276b40188f740bd8634588673ed4f4b
// 22d48c0724974575891d198771bb0590
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';

import '../Model/newsart.dart';


class FetchNews {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    // "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];
  static Future<Newsart> fetchNews() async {
    final _random = new Random();
    var sourceid = sourcesId[_random.nextInt(sourcesId.length)];
    print(sourceid);
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$sourceid&apiKey=d322449fd2b346269948fe5631bfb59b"));

    Map body_data = jsonDecode(response.body);
    List ariticles = body_data["articles"];
    // print(ariticles);
    print("***************************");
    final _Newrandom = new Random();
    var myArticle = ariticles[_Newrandom.nextInt(ariticles.length)];
    print(myArticle);
    print("***************************");
    return Newsart.fromApiToApp(myArticle);
  }
}
