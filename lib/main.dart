import 'package:flutter/material.dart';
import 'Widget/followersBox.dart';
import 'followersInfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<followersInfo> followersInfoList = [
    followersInfo(text: 'FOLLOWERS', number: '1253'),
    followersInfo(text: 'FOLLOWING', number: '30'),
    followersInfo(text: 'COURSES', number: '44')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipPath(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/bg1.jpg'),
                fit: BoxFit.cover,
              )),
            ),
            clipper: getClipper(),
          ),
          Positioned(
            width: 350.0,
            left: 25.0,
            top: MediaQuery.of(context).size.height / 5,
            child: Column(
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/me.jpg'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(75.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, .5), blurRadius: 30.0)
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Mohammad Ahmad',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'MERN Stack Developer',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.body1,
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(
                            Icons.brightness_1,
                            color: Colors.green,
                            size: 10,
                          ),
                        ),
                      ),
                      TextSpan(
                          text: 'Avilable Now',
                          style: TextStyle(
                              color: Colors.green,
                              fontFamily: 'Montserrat',
                              fontSize: 13.0)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: followersInfoList
                        .map((f) => followersBox(fi: f))
                        .toList())
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height / 2.4);
    path.lineTo(size.width + 450, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
