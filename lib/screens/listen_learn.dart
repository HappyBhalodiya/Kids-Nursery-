import 'package:flutter/material.dart';


void main() {
  runApp(new Listen_learnScreen());
}

class Listen_learnScreen extends StatefulWidget {
  @override
  Listen_learnScreenState createState() => Listen_learnScreenState();
}

class Listen_learnScreenState extends State<Listen_learnScreen> {
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
            
            ],
          ))
    ]));
  }
}
