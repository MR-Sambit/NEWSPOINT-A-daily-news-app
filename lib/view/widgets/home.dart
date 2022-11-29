import 'package:dpx/view/widgets/Newscontainer.dart';
import 'package:flutter/material.dart';
import '../../Model/newsart.dart';
import '../../controller/fetchnews.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Newsart newsart;
  getnews() async {
    newsart = await FetchNews.fetchNews();
    setState(() {});
  }

  @override
  void initState(){
    FetchNews.fetchNews();
    getnews();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('N E W S P O I N T')),
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          controller: PageController(initialPage: 0),
          // itemCount: 100,
          onPageChanged:(value)  {
            getnews();
          },
          itemBuilder: (context, index) {
            FetchNews.fetchNews();
            return NewsContainer(
                newsart.imgUrl,
                newsart.newsDesc,
                newsart.newsHead,
                newsart.newsUrl,
                newsart.newsCnt
                ); 
          }),
    );
  }
}
