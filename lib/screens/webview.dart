import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebView extends StatefulWidget {
  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {

//  void myWebView(){
//      final flutterWebviewPlugin = new FlutterWebviewPlugin();
//
//      flutterWebviewPlugin.launch('https://medium.com/flutter-community/a-deep-dive-into-stack-in-flutter-3264619b3a77',
//        rect: new Rect.fromLTWH(
//          0.0,
//          0.0,
//          MediaQuery.of(context).size.width,
//          300.0,
//        ),
//      );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(

          ),
        ],
      ),
    );
  }
}

