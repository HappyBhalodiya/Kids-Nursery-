import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/audio.dart';
import 'package:nursery_rhymes/screens/habits.dart';

class TabsScreen extends StatefulWidget {
  @override
  TabsScreenState createState() => TabsScreenState();
}

class TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Text(
                    "Audio",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("Habits", style: TextStyle(fontSize: 20))
                ],
                indicatorColor: Theme.of(context).primaryColor,
              ),
              title: Align(
                alignment: Alignment.center,
                child: Text(
                  'LEARN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Chango-Regular',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ),
              )),
          body: TabBarView(
            children: [AudioScreen(), HabitsScreen()],
          ),
        ),
      ),
      theme: ThemeData(
        primaryColor: Color(0xff000000),
      ),
    );
  }
}
