import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/category.dart';
void main() {
  runApp(new Play_LearnScreen());
}

class Play_LearnScreen extends StatefulWidget {
  @override
  Play_LearnScreenState createState() => Play_LearnScreenState();
}

class Play_LearnScreenState extends State<Play_LearnScreen> {
  List category = [
    {
      'id': 1,
      'name': 'ALPHABETS',
      'image': 'assets/images/abc.png',
      'color': Colors.pink
    },
    {
      'id': 2,
      'name': 'NUMBERS',
      'image': 'assets/images/123.png',
      'color': Colors.deepPurple
    },
    {
      'id': 3,
      'name': 'COLORS',
      'image': 'assets/images/color.png',
      'color': Colors.deepOrange
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Scaffold(
        body: Stack(children: <Widget>[
      Center(
        child: new Image.asset(
          'assets/images/b.png',
          width: size.width,
          height: size.height,
          fit: BoxFit.fill,
        ),
      ),
      Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: category.map((data) {
                return GestureDetector(
                    onTap: () {
                  
                              Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => CategoryScreen(
                                                  id:
                                                      '${data['id']}',
                                                  name:
                                                      '${data['name']}'),
                                            ));
                    },
                    child: Container(
                        width: 310,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(50, 0, 50, 10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                                image: AssetImage("assets/images/a.jpg"),
                                fit: BoxFit.cover)),
                        child: Row(
                          children: <Widget>[
                            Align(
                                alignment: Alignment.center,
                                child: Image.asset('${data['image']}',
                                    width: 45, height: 35)),
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  " ${data['name']}",
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
    ]));
  }
}
