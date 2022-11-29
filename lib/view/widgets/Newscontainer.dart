import 'package:dpx/view/widgets/viewpage.dart';
import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDesc;
  String newsUrl;
  String newsCnt;
  NewsContainer(
    this.imgUrl,
    this.newsDesc,
    this.newsHead,
    this.newsUrl,
    this.newsCnt,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Container(
        height: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imgUrl,
              height: 400,
              width: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              newsHead.length < 77
                  ? newsHead
                  : newsHead.substring(0, 77) + "...",
              // newsHead.substring(>0, 70),
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              newsDesc,
              style: TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              newsCnt != "--"
                  ? newsCnt.length > 255
                      ? newsCnt.substring(0, 255)
                      : "${newsCnt.toString().substring(0, newsCnt.length - 15)}..."
                  : newsCnt,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detailviewpage(newsUrl)));
                      },
                      child: Text("Read more")),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
      ),
    );
  }
}
// key=d322449fd2b346269948fe5631bfb59b;