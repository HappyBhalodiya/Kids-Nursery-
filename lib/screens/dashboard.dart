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
          'assets/images/dashboard.jpg',
          width: size.width,
          height: size.height,
          fit: BoxFit.fill,
        ),
      ),
      Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 350,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(50, 0, 50, 10),
                  child: OutlineButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/play_learn");
                      },
                      borderSide: BorderSide(
                        color: Colors.black, //Color of the border
                        style: BorderStyle.solid, //Style of the border
                        width: 3.0, //width of the border
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Play & Learn",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontSize: 25),
              )))),
              Container(
                  width: 350,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(50, 0, 50, 10),
                  child: OutlineButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/Tabs");
                      },
                      borderSide: BorderSide(
                        color: Colors.black, //Color of the border
                        style: BorderStyle.solid, //Style of the border
                        width: 3.0, //width of the border
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Listen & Learn",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Chango-Regular',
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                                fontSize: 25),
                          ))))
            ],
          ))
    ]));
  }
}
