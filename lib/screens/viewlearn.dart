import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tts/tts.dart';

void main() {
  runApp(new ViewLearnScreen());
}

class ViewLearnScreen extends StatefulWidget {
  final id;
  final name;

  ViewLearnScreen({Key key, @required this.id, this.name}) : super(key: key);
  @override
  ViewLearnScreenState createState() => ViewLearnScreenState();
}

class ViewLearnScreenState extends State<ViewLearnScreen> {
  List alphabets = [
    {
      'id': 1,
      'data': 'A',
      'name': 'Apple',
      'image': 'assets/images/alphabets/apple.png'
    },
    {
      'id': 2,
      'data': 'B',
      'name': 'Ball',
      'image': 'assets/images/alphabets/ball.png'
    },
    {
      'id': 3,
      'data': 'C',
      'name': 'Cat',
      'image': 'assets/images/alphabets/cat.png'
    },
    {
      'id': 4,
      'data': 'D',
      'name': 'Dog',
      'image': 'assets/images/alphabets/dog.jpg'
    },
    {
      'id': 5,
      'data': 'E',
      'name': 'Elephant',
      'image': 'assets/images/alphabets/elephant.png'
    },
    {
      'id': 6,
      'data': 'F',
      'name': 'Fish',
      'image': 'assets/images/alphabets/fish.png'
    },
    {
      'id': 7,
      'data': 'G',
      'name': 'Giraffe',
      'image': 'assets/images/alphabets/giraffe.png'
    },
    {
      'id': 8,
      'data': 'H',
      'name': 'Horse',
      'image': 'assets/images/alphabets/h.png'
    },
    {
      'id': 9,
      'data': 'I',
      'name': 'Ice Cream',
      'image': 'assets/images/alphabets/i.png'
    },
    {
      'id': 10,
      'data': 'J',
      'name': 'Jocker',
      'image': 'assets/images/alphabets/j.png'
    },
    {
      'id': 11,
      'data': 'K',
      'name': 'Kite',
      'image': 'assets/images/alphabets/k.png'
    },
    {
      'id': 12,
      'data': 'L',
      'name': 'Lion',
      'image': 'assets/images/alphabets/l.png'
    },
    {
      'id': 13,
      'data': 'M',
      'name': 'Monkey',
      'image': 'assets/images/alphabets/m.png'
    },
    {
      'id': 14,
      'data': 'N',
      'name': 'Nest',
      'image': 'assets/images/alphabets/n.png'
    },
    {
      'id': 15,
      'data': 'O',
      'name': 'Orange',
      'image': 'assets/images/alphabets/o.png'
    },
    {
      'id': 16,
      'data': 'P',
      'name': 'Peacock',
      'image': 'assets/images/alphabets/p.png'
    },
    {
      'id': 17,
      'data': 'Q',
      'name': 'Question',
      'image': 'assets/images/alphabets/q.png'
    },
    {
      'id': 18,
      'data': 'R',
      'name': 'Rhinoceros',
      'image': 'assets/images/alphabets/r.png'
    },
    {
      'id': 19,
      'data': 'S',
      'name': 'Sheep',
      'image': 'assets/images/alphabets/s.png'
    },
    {
      'id': 20,
      'data': 'T',
      'name': 'Toys',
      'image': 'assets/images/alphabets/t.png'
    },
    {
      'id': 21,
      'data': 'U',
      'name': 'Umbrella',
      'image': 'assets/images/alphabets/u.png'
    },
    {
      'id': 22,
      'data': 'V',
      'name': 'Van',
      'image': 'assets/images/alphabets/v.png'
    },
    {
      'id': 23,
      'data': 'W',
      'name': 'Watermelon',
      'image': 'assets/images/alphabets/w.png'
    },
    {
      'id': 24,
      'data': 'X',
      'name': 'Xylophone',
      'image': 'assets/images/alphabets/x.png'
    },
    {
      'id': 25,
      'data': 'Y',
      'name': 'Yatch',
      'image': 'assets/images/alphabets/y.png'
    },
    {
      'id': 26,
      'data': 'Z',
      'name': 'Zebra',
      'image': 'assets/images/alphabets/z.png'
    },
  ];
  List numbers = [
    {
      'id': 1,
      'data': '1',
      'name': 'One',
      'image': 'assets/images/alphabets/apple.png'
    },
    {
      'id': 2,
      'data': '2',
      'name': 'Two',
      'image': 'assets/images/alphabets/ball.png'
    },
    {
      'id': 3,
      'data': '3',
      'name': 'Three',
      'image': 'assets/images/alphabets/cat.png'
    },
    {
      'id': 4,
      'data': '4',
      'name': 'Four',
      'image': 'assets/images/alphabets/dog.jpg'
    },
    {
      'id': 5,
      'data': '5',
      'name': 'Five',
      'image': 'assets/images/alphabets/elephant.png'
    },
    {
      'id': 6,
      'data': '6',
      'name': 'Six',
      'image': 'assets/images/alphabets/fish.png'
    },
    {
      'id': 7,
      'data': '7',
      'name': 'Seven',
      'image': 'assets/images/alphabets/giraffe.png'
    },
    {
      'id': 8,
      'data': '8',
      'name': 'Eight',
      'image': 'assets/images/alphabets/h.png'
    },
    {
      'id': 9,
      'data': '9',
      'name': 'Nine',
      'image': 'assets/images/alphabets/i.png'
    },
    {
      'id': 10,
      'data': '10',
      'name': 'Ten',
      'image': 'assets/images/alphabets/j.png'
    },
    {
      'id': 11,
      'data': '11',
      'name': 'Eleven',
      'image': 'assets/images/alphabets/apple.png'
    },
    {
      'id': 12,
      'data': '12',
      'name': 'Twelve',
      'image': 'assets/images/alphabets/ball.png'
    },
    {
      'id': 13,
      'data': '13',
      'name': 'Thirteen',
      'image': 'assets/images/alphabets/cat.png'
    },
    {
      'id': 14,
      'data': '14',
      'name': 'Fourteen',
      'image': 'assets/images/alphabets/dog.jpg'
    },
    {
      'id': 15,
      'data': '15',
      'name': 'Fifteen',
      'image': 'assets/images/alphabets/elephant.png'
    },
    {
      'id': 16,
      'data': '16',
      'name': 'Sixteen',
      'image': 'assets/images/alphabets/fish.png'
    },
    {
      'id': 17,
      'data': '17',
      'name': 'Seventeen',
      'image': 'assets/images/alphabets/giraffe.png'
    },
    {
      'id': 18,
      'data': '18',
      'name': 'Eighteen',
      'image': 'assets/images/alphabets/h.png'
    },
    {
      'id': 19,
      'data': '19',
      'name': 'Nineteen',
      'image': 'assets/images/alphabets/i.png'
    },
    {
      'id': 20,
      'data': '20',
      'name': 'Twenty',
      'image': 'assets/images/alphabets/j.png'
    },
  ];
  List colors = [
    {'id': 1, 'color': Colors.black, 'name': 'Black'},
    {'id': 2, 'color': Colors.white , 'name': 'White'},
    {'id': 3, 'color': Colors.blue , 'name': 'Blue'},
    {'id': 4, 'color': Colors.green , 'name': 'Green'},
    {'id': 5, 'color': Colors.yellow , 'name': 'Yellow'},
    {'id': 6, 'color': Colors.orange , 'name': 'Orange'},
    {'id': 7, 'color': Colors.red , 'name': 'Red'},
    {'id': 8, 'color': Colors.grey , 'name': 'Grey'},
    {'id': 9, 'color': Colors.brown , 'name': 'Brown'},
    {'id': 10, 'color': Colors.purple , 'name': 'Purple'},
  ];

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
                                                        "${alphabets[index]['data']}",
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
                                                            "${alphabets[index]['image']}",
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
                                                  "${alphabets[index]['name']}",
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
                                                    alphabets[index]['data'])
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
                          itemCount: alphabets.length)
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
                                                      "${numbers[index]['data']}",
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
                                                      "${numbers[index]['name']}",
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
                                                        numbers[index]['data'])
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
                              itemCount: numbers.length)
                          : 
                          this.widget.name == "COLORS"
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
                                                      children: <Widget>[
                                                        // Container(
                                                        //   alignment:
                                                        //       Alignment.center,
                                                        //   decoration:
                                                        //       new BoxDecoration(
                                                        //     color: colors[index]
                                                        //         ['color'],
                                                        //     shape:
                                                        //         BoxShape.circle,
                                                        //     border:
                                                        //         new Border.all(
                                                        //       color:
                                                        //           Colors.white,
                                                        //       width: 2.5,
                                                        //     ),
                                                        //   ),
                                                        // )
                                                      ],
                                                    ),
                                                    // Row(
                                                    //   mainAxisAlignment:
                                                    //       MainAxisAlignment
                                                    //           .center,
                                                    //   crossAxisAlignment:
                                                    //       CrossAxisAlignment
                                                    //           .center,
                                                    //   children: <Widget>[
                                                    //     Text(
                                                    //       "${colors[index]['name']}",
                                                    //       style: TextStyle(
                                                    //           fontFamily:
                                                    //               'Chango-Regular',
                                                    //           fontSize: 19,
                                                    //           fontWeight:
                                                    //               FontWeight
                                                    //                   .bold,
                                                    //           color:
                                                    //               Colors.pink),
                                                    //     )
                                                    //   ],
                                                    // ),
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
                                                        // Tts.speak(colors[index]
                                                        //     ['name'])
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
                                  itemCount: colors.length)
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
