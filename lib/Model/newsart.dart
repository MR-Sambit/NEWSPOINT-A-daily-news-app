import 'package:flutter/material.dart';

class Newsart {
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsCnt;
  String newsUrl;

  Newsart(
    @required this.imgUrl,
    @required this.newsDesc,
    @required this.newsHead,
    @required this.newsUrl,
    @required this.newsCnt,
  );
  static Newsart fromApiToApp(Map<String, dynamic> article) {
    return Newsart(
      article["urlToImage"] ??
          "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftimesofindia.indiatimes.com%2Findia%2Fbreaking-news-live-updates-3-10-2022%2Fliveblog%2F94607458.cms&psig=AOvVaw3yiHcEcfOPHifq3jPm3RBI&ust=1669617005853000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCJjqlpbezfsCFQAAAAAdAAAAABAE",
      article["description"] ?? "No description",
      article["title"] ?? "No title",
      // article["description"] ?? "No description",
      // article["content"] ?? "No content",
      article["url"] ?? "No url",
      article["content"] ?? "No content",
      // article["description"] ?? "No description",
    );
  }
}
