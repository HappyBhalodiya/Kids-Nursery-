import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/category.dart';
import 'package:nursery_rhymes/json.dart' as jsonData;
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:nursery_rhymes/screens/maths.dart';
import 'package:nursery_rhymes/screens/mathsCategory.dart';

void main() {
  runApp(new PlayLearnScreen());
}

class PlayLearnScreen extends StatefulWidget {
  @override
  PlayLearnScreenState createState() => PlayLearnScreenState();
}

class PlayLearnScreenState extends State<PlayLearnScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
        body: Stack(children: <Widget>[
      Center(
        child: new Image.asset(
          'assets/images/playlearn.jpg',
          width: size.width,
          height: size.height,
          fit: BoxFit.fill,
        ),
      ),
      Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: jsonData.category.map((data) {
                return Container(
                    width: 350,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(50, 0, 50, 10),
                    child: OutlineButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryScreen(
                                    id: '${data['id']}',
                                    name: '${data['name']}'),
                              ));
                        },
                        borderSide: BorderSide(
                          color: Colors.deepPurple, //Color of the border
                          style: BorderStyle.solid, //Style of the border
                          width: 3.0, //width of the border
                        ),
                        child: Row(
                          children: <Widget>[
                            Align(
                                alignment: Alignment.center,
                                child: Image.asset('${data['image']}',
                                    width: 45, height: 35)),
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "${data['name']}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Chango-Regular',
                                      fontWeight: FontWeight.bold,
                                      color: data['color'],
                                      fontSize: 25),
                                ))
                          ],
                        )));
              }).toList())),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Container(
                    width: 350,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(50, 240, 50, 10),
                    child: OutlineButton(
                        onPressed: () {
                         Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MathsCategoryScreen()));
                         
                        },
                        borderSide: BorderSide(
                          color: Colors.deepPurple, //Color of the border
                          style: BorderStyle.solid, //Style of the border
                          width: 3.0, //width of the border
                        ),
                        child: Row(
                          children: <Widget>[
                            Align(
                                alignment: Alignment.center,
                                child: Image.asset('assets/images/maths.png',
                                    width: 45, height: 35)),
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "MATHS",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Chango-Regular',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal,
                                      fontSize: 25),
                                ))
                          ],
                        )))
          ],
        ),
      )
    ]));
  }
}
