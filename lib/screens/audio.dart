import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/audioplayer.dart';

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
  List audio = [
    {
      'id': 1,
      'image': 'assets/images/audio_images/duck.jpeg',
      'name': 'little ducks'
    },
    {
      'id': 2,
      'image': 'assets/images/audio_images/sheep.jpg',
      'name': 'Baa Baa'
    },
    {
      'id': 3,
      'image': 'assets/images/audio_images/shark.png',
      'name': 'Baby shark'
    },
    {
      'id': 4,
      'image': 'assets/images/audio_images/headshoulders.png',
      'name': 'Head shoulders'
    },
    {
      'id': 5,
      'image': 'assets/images/audio_images/hickorydickory.jpg',
      'name': 'Hickory dickory'
    },
    {
      'id': 6,
      'image': 'assets/images/audio_images/humptydumpty.jpg',
      'name': 'Humpty dumpty'
    },
    {
      'id': 7,
      'image': 'assets/images/audio_images/Incy-wincy.jpeg',
      'name': 'Iucy wincy'
    },
    {
      'id': 8,
      'image': 'assets/images/audio_images/little-lamp.jpg',
      'name': 'Little lamp'
    },
    {
      'id': 9,
      'image': 'assets/images/audio_images/mulberrybush.jpg',
      'name': 'Mulberry bush'
    },
    {
      'id': 10,
      'image': 'assets/images/audio_images/old-macdonald.png',
      'name': 'Old macdonald'
    },
    {
      'id': 11,
      'image': 'assets/images/audio_images/twinkle-twinkle.jpg',
      'name': 'Twinkle twinkle'
    },
    {
      'id': 12,
      'image': 'assets/images/audio_images/wheels.jpeg',
      'name': 'Wheels on the bus'
    }
  ];
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
                                  name: '${audio[index]['name']}')));
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
                                    audio[index]['image'],
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
                                      "${audio[index]['name']}",
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
              childCount: audio.length,
            ),
          )
        ],
      )
    ])));
  }
}
