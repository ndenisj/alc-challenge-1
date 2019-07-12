import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:climate/constants.dart';
import 'package:climate/components.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/landing1.png'), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  "WELCOME TO ALC 4.0",
                  style: kHeaderTextStyle,
                ),
              ),
            ),
//            SizedBox(height: 100.0,),
            Column(
              children: <Widget>[
                CardButton(
                  icon: FontAwesomeIcons.info,
                  onPressed: () {
                    Navigator.pushNamed(context, '/webview');
                  },
                  title: 'ABOUT ALC',
                  margin: EdgeInsets.only(top: 80,right: 75,left: 75),
                ),
                CardButton(
                  icon: FontAwesomeIcons.user,
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  title: 'MY PROFILE',
                  margin: EdgeInsets.only(top: 40,bottom: 80,right: 75,left: 75),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
