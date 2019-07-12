import 'package:flutter/material.dart';
import 'package:climate/screens/landing.dart';
import 'package:climate/screens/profile.dart';
import 'package:climate/screens/webview.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              body1: TextStyle(
            color: Colors.black87,
          ))),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Landing(),
        '/profile': (context) => Profile(),
        //'/webview': (context) => WebView(),
        '/webview': (_) => WebviewScaffold(
              url: 'https://google.com',
              appBar: AppBar(
                title: Center(child: Text('ABOUT ALC'),),
              ),
              withZoom: true,
              withLocalStorage: true,
              hidden: true,
              initialChild: Container(
                child: Center(
                  child: Text('Please Wait...', style: TextStyle(
                    fontSize: 50.0,
                  ),),
                ),
              ),
            ),
      },
    );
  }
}
