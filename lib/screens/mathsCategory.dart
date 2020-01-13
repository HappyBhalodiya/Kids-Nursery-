import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/category.dart';
import 'package:nursery_rhymes/json.dart' as jsonData;
import 'package:nursery_rhymes/screens/maths.dart';

void main() {
  runApp(new MathsCategoryScreen());
}

class MathsCategoryScreen extends StatefulWidget {
  @override
  MathsCategoryScreenState createState() => MathsCategoryScreenState();
}

class MathsCategoryScreenState extends State<MathsCategoryScreen> {
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
              children: jsonData.mathsCategory.map((data) {
                return Container(
                    width: 350,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(50, 0, 50, 10),
                    child: OutlineButton(
                        onPressed: () {
                          //  Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => MathsScreen()));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MathsScreen(
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
                                child: Text(
                                  "${data['name']}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'Chango-Regular',
                                      fontWeight: FontWeight.bold,
                                      color: data['color'],
                                      fontSize: 20),
                                ))
                          ],
                        )));
              }).toList())),
    ]));
  }
}
