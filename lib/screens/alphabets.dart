import 'package:flutter/material.dart';
import 'package:tts/tts.dart';

void main() {
  runApp(new AlphabetsScreen());
}

class AlphabetsScreen extends StatefulWidget {
  @override
  AlphabetsScreenState createState() => AlphabetsScreenState();
}

class AlphabetsScreenState extends State<AlphabetsScreen> {
  List alphabets = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
        // appBar: new AppBar(
        //   title: new Text(
        //     'LEARN',
        //     style: TextStyle(fontFamily: 'Chango-Regular'),
        //   ),
        // ),
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
                  Text(
                    'LEARN',
                    style: TextStyle(
                        fontFamily: 'Chango-Regular',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow),
                  )
                ],
              ),
            )
          ])),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 1.0,
              crossAxisCount: 4,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      image: DecorationImage(
                        image: AssetImage("assets/images/abcd.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/viewlearn");
                      },
                      child: Text(
                        '${alphabets[index]}',
                        style: TextStyle(
                            fontFamily: 'Chango-Regular',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ));
              },
              childCount: alphabets.length,
            ),
          ),
        ],
      )
    ])));
  }
}
