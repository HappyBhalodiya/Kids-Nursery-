import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/viewlearn.dart';

void main() {
  runApp(new CategoryScreen());
}

class CategoryScreen extends StatefulWidget {
  final id;
  final name;
  CategoryScreen({Key key, @required this.id, this.name}) : super(key: key);
  @override
  CategoryScreenState createState() => CategoryScreenState();
}

class CategoryScreenState extends State<CategoryScreen> {
  List categoryname;
  List colors = [
    {'id': 1, 'name': "COLORS", 'color': Colors.black},
    {'id': 2, 'name': "COLORS", 'color': Colors.white},
    {'id': 3, 'name': "COLORS", 'color': Colors.blue},
    {'id': 4, 'name': "COLORS", 'color': Colors.green},
    {'id': 5, 'name': "COLORS", 'color': Colors.yellow},
    {'id': 6, 'name': "COLORS", 'color': Colors.orange},
    {'id': 7, 'name': "COLORS", 'color': Colors.red},
    {'id': 8, 'name': "COLORS", 'color': Colors.grey},
    {'id': 9, 'name': "COLORS", 'color': Colors.brown},
    {'id': 10, 'name': "COLORS", 'color': Colors.purple},
  ];
  @override
  void initState() {
    super.initState();
    this.fetchData();
  }

  fetchData() {
    print('=====${this.widget.id}====${this.widget.name}');
    if (this.widget.name == 'ALPHABETS') {
      categoryname = [
        {'name': "ALPHABETS", 'data': 'A'},
        {'name': "ALPHABETS", 'data': 'B'},
        {'name': "ALPHABETS", 'data': 'C'},
        {'name': "ALPHABETS", 'data': 'D'},
        {'name': "ALPHABETS", 'data': 'E'},
        {'name': "ALPHABETS", 'data': 'F'},
        {'name': "ALPHABETS", 'data': 'I'},
        {'name': "ALPHABETS", 'data': 'J'},
        {'name': "ALPHABETS", 'data': 'K'},
        {'name': "ALPHABETS", 'data': 'L'},
        {'name': "ALPHABETS", 'data': 'M'},
        {'name': "ALPHABETS", 'data': 'N'},
        {'name': "ALPHABETS", 'data': 'O'},
        {'name': "ALPHABETS", 'data': 'P'},
        {'name': "ALPHABETS", 'data': 'Q'},
        {'name': "ALPHABETS", 'data': 'R'},
        {'name': "ALPHABETS", 'data': 'S'},
        {'name': "ALPHABETS", 'data': 'T'},
        {'name': "ALPHABETS", 'data': 'U'},
        {'name': "ALPHABETS", 'data': 'V'},
        {'name': "ALPHABETS", 'data': 'W'},
        {'name': "ALPHABETS", 'data': 'X'},
        {'name': "ALPHABETS", 'data': 'Y'},
        {'name': "ALPHABETS", 'data': 'Z'},
      ];
    } else if (this.widget.name == 'NUMBERS') {
      categoryname = [
        {'name': "NUMBERS", 'data': '1'},
        {'name': "NUMBERS", 'data': '2'},
        {'name': "NUMBERS", 'data': '3'},
        {'name': "NUMBERS", 'data': '4'},
        {'name': "NUMBERS", 'data': '5'},
        {'name': "NUMBERS", 'data': '6'},
        {'name': "NUMBERS", 'data': '7'},
        {'name': "NUMBERS", 'data': '8'},
        {'name': "NUMBERS", 'data': '9'},
        {'name': "NUMBERS", 'data': '10'},
        {'name': "NUMBERS", 'data': '11'},
        {'name': "NUMBERS", 'data': '12'},
        {'name': "NUMBERS", 'data': '13'},
        {'name': "NUMBERS", 'data': '14'},
        {'name': "NUMBERS", 'data': '15'},
        {'name': "NUMBERS", 'data': '16'},
        {'name': "NUMBERS", 'data': '17'},
        {'name': "NUMBERS", 'data': '18'},
        {'name': "NUMBERS", 'data': '19'},
        {'name': "NUMBERS", 'data': '20'},
      ];
    }
  }

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
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              width: MediaQuery.of(context).size.height,
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
          this.widget.name == 'COLORS'
              ? SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    childAspectRatio: 1.0,
                    crossAxisCount: 3,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () {
                        print("$index===${colors[index]['name']}=");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ViewLearnScreen(
                                        id: '$index',
                                        name:
                                            '${colors[index]['name']}')));
                            // Navigator.of(context).pushNamed("/viewlearn");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: new BoxDecoration(
                              color: colors[index]['color'],
                              shape: BoxShape.circle,
                              border: new Border.all(
                                color: Colors.white,
                                width: 2.5,
                              ),
                            ),
                          ));
                    },
                    childCount: colors.length,
                  ),
                )
              : SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    childAspectRatio: 1.0,
                    crossAxisCount: 3,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(90.0)),
                            image: DecorationImage(
                              image: AssetImage("assets/images/abcd.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ViewLearnScreen(
                                          id: '$index',
                                          name:
                                              '${categoryname[index]['name']}')));
                              // Navigator.of(context).pushNamed("/viewlearn");
                            },
                            child: Text(
                              '${categoryname[index]['data']}',
                              style: TextStyle(
                                  fontFamily: 'Chango-Regular',
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ));
                    },
                    childCount: categoryname.length,
                  ),
                )
        ],
      )
    ])));
  }
}
