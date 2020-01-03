import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_html/flutter_html.dart';

void main() {
  runApp(new AudioPlayerScreen());
}

class AudioPlayerScreen extends StatefulWidget {
  final id;
  final name;

  AudioPlayerScreen({Key key, @required this.id, this.name}) : super(key: key);
  @override
  AudioPlayerScreenState createState() => AudioPlayerScreenState();
}

class AudioPlayerScreenState extends State<AudioPlayerScreen> {
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
  }

  SwiperController controller;
  List<SwiperController> controllers;
  List<bool> autoplayes;

  List rhymes = [
    {
      'id': 1,
      'data':
          """<center><span>Five little ducks went swimming one day <span/><br/>
            <span> Over the hill and far away</span><br/>
            <span> Mother duck said, “Quack quack quack quack”</span><br/>
            <span> And only four little ducks came back!</span><br/><br/>

            <span> Four little ducks went swimming one day</span><br/>
            <span> Over the hill and far away</span><br/>
            <span> Mother duck said, “Quack quack quack quack”</span><br/>
            <span> And only three little ducks came back!</span><br/><br/>

            <span> Three little ducks went swimming one day</span><br/>
            <span> Over the hill and far away</span><br/>
            <span> Mother duck said, “Quack quack quack quack”</span><br/>
            <span> And only two little duck came back!</span><br/><br/>
                   
            <span> Two little ducks went swimming one day</span><br/>
            <span> Over the hill and far away</span><br/>
            <span> Mother duck said, “Quack quack quack quack”</span><br/>
            <span> And only one little duck came back!</span><br/><br/>

            <span> One little ducks went swimming one day</span><br/>
            <span> Over the hill and far away</span><br/>
            <span> Mother duck said, “Quack quack quack quack”</span><br/>
            <span> And all her five little ducks came back!</span><br/><br/>
            </center>"""
    },
    {
      'id': 2,
      'data':
          """<center><span>Five little ducks went swimming one day <span/><br/>
            <span> Over the hill and far away</span><br/>
            <span> Mother duck said, “Quack quack quack quack”</span><br/>
            <span> And only four little ducks came back!</span><br/><br/>

            <span> Four little ducks went swimming one day</span><br/>
            <span> Over the hill and far away</span><br/>
            <span> Mother duck said, “Quack quack quack quack”</span><br/>
            <span> And only three little ducks came back!</span><br/><br/>

            <span> Three little ducks went swimming one day</span><br/>
            <span> Over the hill and far away</span><br/>
            <span> Mother duck said, “Quack quack quack quack”</span><br/>
            <span> And only two little duck came back!</span><br/><br/>
                   
            <span> Two little ducks went swimming one day</span><br/>
            <span> Over the hill and far away</span><br/>
            <span> Mother duck said, “Quack quack quack quack”</span><br/>
            <span> And only one little duck came back!</span><br/><br/>

            <span> One little ducks went swimming one day</span><br/>
            <span> Over the hill and far away</span><br/>
            <span> Mother duck said, “Quack quack quack quack”</span><br/>
            <span> And all her five little ducks came back!</span><br/><br/>
            </center>"""
    }
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var startindex = int.parse(this.widget.id);
    return new Scaffold(
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
                    'assets/images/audio_images/bg.jpg',
                  ),
                ),
              )),
            ),
            new Swiper(
              loop: false,
              itemCount: rhymes.length,
              controller: controller,
              itemBuilder: (BuildContext context, int index) {
                return new Column(
                  children: <Widget>[
                    new Expanded(
                      flex: 1,
                      child: new Swiper(
                        controller: controllers[index],
                        itemCount: rhymes.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                            "hello",
                            style: TextStyle(color: Colors.white),
                          );
                          // return Html(
                          //     data: rhymes[index]['data']);
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
