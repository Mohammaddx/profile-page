import 'package:flutter/material.dart';
import '../followersInfo.dart';

class followersBox extends StatelessWidget {
  final followersInfo fi;
  followersBox({this.fi});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              fi.number,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              fi.text,
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
