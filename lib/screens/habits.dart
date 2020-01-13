import 'package:flutter/material.dart';

void main() {
  runApp(new HabitsScreen());
}

class HabitsScreen extends StatefulWidget {
  
  @override
  HabitsScreenState createState() => HabitsScreenState();
}

class HabitsScreenState extends State<HabitsScreen> {
 @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
        body: SafeArea(
            child: Stack(children: <Widget>[
      Center(
        child: new Image.asset(
          'assets/images/giphy.gif',
          width: size.width,
          height: size.height,
          fit: BoxFit.fill,
        ),
      ),
      CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              width: MediaQuery.of(context).size.height,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Column(
                children: <Widget>[
                  
                ],
              ),
            )
          ])),
       
            
        ],
      )
    ]))
    );
  }
}
