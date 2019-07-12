import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class CardButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final IconData icon;
  final EdgeInsetsGeometry margin;

  CardButton(
      {@required this.icon, @required this.onPressed, @required this.title, this.margin});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 20,
        margin: margin,
        color: Colors.orange,
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            title,
            style: kButtonTextStyle,
          ),
          trailing: Icon(FontAwesomeIcons.arrowRight),
        ),
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {

  final IconData icon;
  final String title;
  final String body;

  InfoWidget({@required this.title, @required this.icon, @required this.body});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              icon,
              color: Colors.blue,
              size: 20,
            ),
          ),
//          SizedBox(
//            width: 0,
//          ),
          Expanded(child: Text(title, style: kProfileTitleTextStyle,)),
//          SizedBox(
//            width: 3.0,
//          ),
          Text(body, style: kProfileBodyTextStyle,),
        ],
      ),
    );
  }
}