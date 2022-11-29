import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Detailviewpage extends StatefulWidget {
  String newsUrl;
  Detailviewpage(@required this.newsUrl);

  @override
  _DetailviewpageState createState() => _DetailviewpageState();
}

class _DetailviewpageState extends State<Detailviewpage> {
  @override
  void initState() {
    setState(() {
      widget.newsUrl = widget.newsUrl.contains('http:')
          ? widget.newsUrl.replaceAll("http:", "https:")
          : widget.newsUrl;
    });
    super.initState();
  }

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('N E W S P O I N T')),
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.newsUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            setState(() {
              _controller.complete(webViewController);
            });
          },
        ),
      ),
    );
  }
}
