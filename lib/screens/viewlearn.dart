import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tts/tts.dart';

void main() {
  runApp(new ViewLearnScreen());
}

class ViewLearnScreen extends StatefulWidget {
  @override
  ViewLearnScreenState createState() => ViewLearnScreenState();
}

class ViewLearnScreenState extends State<ViewLearnScreen> {
  List<String> alphabets = [
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
              width: MediaQuery.of(context).size.width,
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
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Swiper(
                      layout: SwiperLayout.CUSTOM,
                      customLayoutOption:
                          new CustomLayoutOption(startIndex: -1, stateCount: 3)
                              .addRotate(
                                  [-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                        new Offset(-370.0, -40.0),
                        new Offset(0.0, 0.0),
                        new Offset(370.0, -40.0)
                      ]),
                      itemWidth: 300.0,
                      itemHeight: 270.0,
                      itemBuilder: (context, index) {
                        return new Container(
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                        width: 300,
                                        height: 220,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/viewimg.jpg"),
                                                colorFilter:
                                                    new ColorFilter.mode(
                                                        Color(0xFF0E3311)
                                                            .withOpacity(1),
                                                        BlendMode.dstATop),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                  height: 80,
                                                  margin: EdgeInsets.fromLTRB(
                                                      80, 10, 0, 0),
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text(
                                                        "${alphabets[index]}",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Chango-Regular',
                                                            fontSize: 55,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.pink),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                    height: 80,
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 10, 0, 0),
                                                    child: Column(
                                                      children: <Widget>[
                                                        Image.asset(
                                                            "assets/images/apple.jpg",
                                                            width: 80,
                                                            height: 80)
                                                      ],
                                                    )),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "Apple",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Chango-Regular',
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.pink),
                                                )
                                              ],
                                            ),
                                            Container(
                                                margin:
                                                    EdgeInsets.only(top: 50),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    GestureDetector(
                                                      onTap: () {
                                                        Tts.speak(
                                                            alphabets[index]);
                                                      },
                                                      child: Icon(
                                                        Icons.audiotrack,
                                                        color: Colors.yellow,
                                                        size: 50.0,
                                                      ),
                                                    )
                                                  ],
                                                )),
                                          ],
                                        )),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[Container(color: Colors.red,)],
                                )
                              ],
                            ));
                      },
                      itemCount: alphabets.length)
                ],
              ),
            )
          ])),
        ],
      )
    ])));
  }
}
