import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/audioplayer.dart';
import 'package:nursery_rhymes/json.dart' as jsonData;

void main() {
  runApp(new AudioScreen());
}

class AudioScreen extends StatefulWidget {
  final id;
  final name;
  AudioScreen({Key key, @required this.id, this.name}) : super(key: key);
  @override
  AudioScreenState createState() => AudioScreenState();
}

class AudioScreenState extends State<AudioScreen> {
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
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 1.0,
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AudioPlayerScreen(
                                  id: '$index',
                                  name: '${jsonData.audio[index]['name']}')));
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 135,
                                  width: 180,
                                  // color: Colors.red,
                                  child: Image.asset(
                                    jsonData.audio[index]['image'],
                                    fit: BoxFit.fill,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 180,
                                  child: RaisedButton(
                                    color: Colors.teal,
                                    onPressed: () {},
                                    child: Text(
                                      "${jsonData.audio[index]['name']}",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )));
              },
              childCount: jsonData.audio.length,
            ),
          )
        ],
      )
    ])));
  }
}
