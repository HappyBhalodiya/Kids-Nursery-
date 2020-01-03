import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/category.dart';

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
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.grey,
                onPressed: () {
                  Navigator.of(context).pushNamed("/play_learn");
                },
                child: Text("Play & Learn"),
              ),
              RaisedButton(
                color: Colors.grey,
                onPressed: () {
                  Navigator.of(context).pushNamed("/Tabs");
                },
                child: Text("Listen & Learn"),
              )
            ],
          ))
    ]));
  }
}
