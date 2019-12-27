import 'package:flutter/material.dart';

void main() {
  runApp(new DashboardScreen());
}

class DashboardScreen extends StatefulWidget {
  @override
  DashboardScreenState createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
        body: Stack(children: <Widget>[
      Center(
        child: new Image.asset(
          'assets/images/b.png',
          width: size.width,
          height: size.height,
          fit: BoxFit.fill,
        ),
      ),
      Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
              onTap: () {
                 Navigator.of(context).pushNamed("/alphabets");
              },
              child: Container(
                  width: 310,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assets/images/a.jpg"),
                          fit: BoxFit.cover)),
                  child: Row(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/abc.png",
                              width: 45, height: 35)),
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            " ALPHABETS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontSize: 25),
                          ))
                    ],
                  ))),
          GestureDetector(
              onTap: () {
                print("you clicked my");
              },
              child: Container(
                  width: 310,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assets/images/a.jpg"),
                          fit: BoxFit.cover)),
                  child: Row(children: <Widget>[
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/123.png",
                            width: 45, height: 35)),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          " NUMBERS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Chango-Regular',
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                              fontSize: 25),
                        ))
                  ]))),
          GestureDetector(
              onTap: () {
                print("you clicked my");
              },
              child: Container(
                  width: 310,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assets/images/a.jpg"),
                          fit: BoxFit.cover)),
                  child: Row(children: <Widget>[
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/color.png",
                            width: 45, height: 35)),
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          " COLORS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Chango-Regular',
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                              fontSize: 25),
                        ))
                  ]))),
          GestureDetector(
              onTap: () {
                print("you clicked my");
              },
              child: Container(
                  width: 310,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assets/images/a.jpg"),
                          fit: BoxFit.cover)),
                  child: Row(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/maths.png",
                              width: 45, height: 30)),
                      Align(
                          alignment: Alignment.center,
                          child: Text(
                            " MATHS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                                fontSize: 25),
                          ))
                    ],
                  ))),
        ],
      )),
    ]));
  }
}
