import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:nursery_rhymes/json.dart' as jsonData;

typedef void OnError(Exception exception);

void main() {
  runApp(new AudioPlayerScreen());
}

class AudioPlayerScreen extends StatefulWidget {
  final id;
  final name;
  AudioPlayerScreen({Key key, @required this.id, this.name}) : super(key: key);
  @override
  AudioPlayerScreenState createState() => new AudioPlayerScreenState();
}

class AudioPlayerScreenState extends State<AudioPlayerScreen>
    with SingleTickerProviderStateMixin {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  String audio;
  String endduration;
  bool isPlaying = false;
  AnimationController _animationController;
  @override
  void initState() {
    controller = new SwiperController();
    autoplayes = new List()
      ..length = 10
      ..fillRange(0, 10, false);
    controllers = new List()
      ..length = 10
      ..fillRange(0, 10, new SwiperController());
    super.initState();
    
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  SwiperController controller;
  List<SwiperController> controllers;
  List<bool> autoplayes;

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  void initPlayer(index) {
    print("call init player");
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
          _duration = d;
          endduration = d.toString();
        });
    advancedPlayer.onAudioPositionChanged.listen((p) =>
        {setState(() => audio = p.toString()),
         print('Current position: $p')});
    advancedPlayer.positionHandler = (p) => setState(() {
          _position = p;
        });
  }

  String localFilePath;

  Widget slider() {
    return Slider(
        value: _position.inSeconds.toDouble(),
        min: 00.00,
        max: _duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            seekToSecond(value.toInt());
            value = value;
          });
        });
  }


  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    var srartDuration =
        '${audio == null ? 00.00 : audio.split('.')[0].split(':')[1] + ':' + audio.split('.')[0].split(':')[2]}';
    var endDuration =
        '${endduration == null ? 00.00 : endduration.split('.')[0].split(':')[1] + ':' + endduration.split('.')[0].split(':')[2]}';
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                  decoration: new BoxDecoration(
                color: const Color(0xff7c94b6),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: new AssetImage(
                    'assets/images/audio_images/bg1.jpg',
                  ),
                ),
              )),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'LEARN',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Chango-Regular',
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
            ),
            new Swiper(
              loop: false,
              itemCount: jsonData.rhymes.length,
              controller: controller,
              itemBuilder: (BuildContext context, int index) {
                return new Column(
                  children: <Widget>[
                    new Expanded(
                      flex: 1,
                      child: new Swiper(
                        controller: controllers[index],
                        itemCount: jsonData.rhymes.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text('$srartDuration'),
                                      Spacer(),
                                      Text("$endDuration")
                                    ],
                                  ),
                                  slider(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.arrow_left,
                                        color: Colors.black,
                                        size: 70.0,
                                      ),
                                      IconButton(
                                        iconSize: 50,
                                        icon: AnimatedIcon(
                                          icon: AnimatedIcons.play_pause,
                                          progress: _animationController,
                                        ),
                                        onPressed: () => {
                                          initPlayer(index),
                                          setState(() {
                                            isPlaying = !isPlaying;
                                            if (isPlaying) {
                                              _animationController.forward();
                                              audioCache.play(
                                                  "${jsonData.rhymes[index]['audio']}");
                                            } else {
                                              _animationController.reverse();

                                              advancedPlayer.pause();
                                            }
                                          })
                                        },
                                      ),
                                      Icon(
                                        Icons.arrow_right,
                                        color: Colors.black,
                                        size: 70.0,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        ' ${jsonData.rhymes[index]['name']}',
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    ],
                                  ),
                                  Column(children: <Widget>[
                                    Html(data: jsonData.rhymes[index]['data'])
                                  ])
                                ],
                              ));
                        },
                        autoplay: autoplayes[index],
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
