import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:climate/components.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            child: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  BackButton(
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  blurRadius: 60.0,
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage('images/background2.gif'),
                fit: BoxFit.fitHeight,
              ),
            ),
            height: 300.0,
          ),
          Positioned(
            top: 200.0,
            left: 35.0,
            right: 35.0,
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image(
                      image: AssetImage(
                        'images/denisj.jpg',
                      ),
                      height: 170,
                      width: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                  InfoWidget(
                    title: 'TRACK: ',
                    body: 'Android',
                    icon: FontAwesomeIcons.road,
                  ),
                  InfoWidget(
                    title: 'COUNTRY: ',
                    body: 'Nigeria',
                    icon: FontAwesomeIcons.globeAfrica,
                  ),
                  InfoWidget(
                    title: 'EMAIL: ',
                    body: 'denis.john.ndarake@gmail.com',
                    icon: FontAwesomeIcons.envelope,
                  ),
                  InfoWidget(
                    title: 'PHONE NUMBER: ',
                    body: '+2348161535219',
                    icon: FontAwesomeIcons.phone,
                  ),
                  InfoWidget(
                    title: 'SLACK USERNAME: ',
                    body: '@denisjn',
                    icon: FontAwesomeIcons.slack,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

