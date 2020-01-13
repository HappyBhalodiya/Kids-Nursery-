import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tts/tts.dart';
import 'package:nursery_rhymes/json.dart' as jsonData;


class ViewLearnScreen extends StatefulWidget {
  final id;
  final name;

  ViewLearnScreen({Key key, @required this.id, this.name}) : super(key: key);
  @override
  ViewLearnScreenState createState() => ViewLearnScreenState();
}

class ViewLearnScreenState extends State<ViewLearnScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var startindex = int.parse(this.widget.id);
    print("this.widget.id==${this.widget.name}====${this.widget.id}");
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
                  this.widget.name == 'ALPHABETS'
                      ? Swiper(
                          layout: SwiperLayout.CUSTOM,
                          customLayoutOption: new CustomLayoutOption(startIndex: startindex - 1, stateCount: 3)
                              .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate(
                                  [new Offset(-370.0, -40.0), new Offset(0.0, 0.0), new Offset(370.0, -40.0)]),
                          itemWidth: 300.0,
                          itemHeight: 270.0,
                          itemBuilder: (context, index) {
                            return new Container(
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
                                                        "${jsonData.alphabets[index]['data']}",
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
                                                            "${jsonData.alphabets[index]['image']}",
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
                                                  "${jsonData.alphabets[index]['name']}",
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Chango-Regular',
                                                      fontSize: 19,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.pink),
                                                )
                                              ],
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        child: Row(
                                      children: <Widget>[
                                        Container(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            FlatButton(
                                              onPressed: () => {
                                                Tts.speak(
                                                    jsonData.alphabets[index]['data'])
                                              },
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.play_arrow,
                                                    color: Colors.pink,
                                                    size: 50.0,
                                                  ),
                                                  Text(
                                                    "Listen",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            'Chango-Regular',
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.pink),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                      ],
                                    ))
                                  ],
                                )
                              ],
                            ));
                          },
                          itemCount: jsonData.alphabets.length)
                      : this.widget.name == "NUMBERS"
                          ? Swiper(
                              layout: SwiperLayout.CUSTOM,
                              customLayoutOption: new CustomLayoutOption(
                                      startIndex: startindex - 1, stateCount: 3)
                                  .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate(
                                      [new Offset(-370.0, -40.0), new Offset(0.0, 0.0), new Offset(370.0, -40.0)]),
                              itemWidth: 300.0,
                              itemHeight: 270.0,
                              itemBuilder: (context, index) {
                                return new Container(
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(
                                                      "${jsonData.numbers[index]['data']}",
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
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Text(
                                                      "${jsonData.numbers[index]['name']}",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Chango-Regular',
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.pink),
                                                    )
                                                  ],
                                                ),
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
                                        Container(
                                            child: Row(
                                          children: <Widget>[
                                            Container(
                                                child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                FlatButton(
                                                  onPressed: () => {
                                                    Tts.speak(
                                                        jsonData.numbers[index]['data'])
                                                  },
                                                  child: Row(
                                                    children: <Widget>[
                                                      Icon(
                                                        Icons.play_arrow,
                                                        color: Colors.pink,
                                                        size: 50.0,
                                                      ),
                                                      Text(
                                                        "Listen",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Chango-Regular',
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.pink),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )),
                                          ],
                                        ))
                                      ],
                                    )
                                  ],
                                ));
                              },
                              itemCount: jsonData.numbers.length)
                          : this.widget.name == "COLORS"
                              ? Swiper(
                                  layout: SwiperLayout.CUSTOM,
                                  customLayoutOption:
                                      new CustomLayoutOption(startIndex: startindex - 1, stateCount: 3)
                                          .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                                    new Offset(-370.0, -40.0),
                                    new Offset(0.0, 0.0),
                                    new Offset(370.0, -40.0)
                                  ]),
                                  itemWidth: 300.0,
                                  itemHeight: 270.0,
                                  itemBuilder: (context, index) {
                                    return new Container(
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
                                                            new ColorFilter
                                                                    .mode(
                                                                Color(0xFF0E3311)
                                                                    .withOpacity(
                                                                        1),
                                                                BlendMode
                                                                    .dstATop),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                  children: <Widget>[
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          width: 100,
                                                          height: 100,
                                                          decoration:
                                                              new BoxDecoration(
                                                            color: jsonData.colors[index]
                                                                ['color'],
                                                            shape:
                                                                BoxShape.circle,
                                                            border:
                                                                new Border.all(
                                                              color:
                                                                  Colors.white,
                                                              width: 2.5,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Text(
                                                          "${jsonData.colors[index]['name']}",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Chango-Regular',
                                                              fontSize: 19,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.pink),
                                                        )
                                                      ],
                                                    ),
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
                                            Container(
                                                child: Row(
                                              children: <Widget>[
                                                Container(
                                                    child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    FlatButton(
                                                      onPressed: () => {
                                                        Tts.speak(jsonData.colors[index]
                                                            ['name'])
                                                      },
                                                      child: Row(
                                                        children: <Widget>[
                                                          Icon(
                                                            Icons.play_arrow,
                                                            color: Colors.pink,
                                                            size: 50.0,
                                                          ),
                                                          Text(
                                                            "Listen",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Chango-Regular',
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .pink),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                              ],
                                            ))
                                          ],
                                        )
                                      ],
                                    ));
                                  },
                                  itemCount: jsonData.colors.length)
                              : null
                ],
              ),
            )
          ])),
        ],
      )
    ])));
  }
}
