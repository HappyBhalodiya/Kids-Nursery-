import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/dashboard.dart';
import 'package:nursery_rhymes/screens/category.dart';
import 'package:nursery_rhymes/screens/maths.dart';
import 'package:nursery_rhymes/screens/mathsCategory.dart';
import 'package:nursery_rhymes/screens/viewlearn.dart';
import 'package:nursery_rhymes/screens/play_learn.dart';
import 'package:nursery_rhymes/screens/audio.dart';
import 'package:nursery_rhymes/screens/Tabs.dart';
import 'package:nursery_rhymes/screens/habits.dart';
import 'package:nursery_rhymes/screens/audioplayer.dart';

class Routes {
  var routes = <String, WidgetBuilder>{
    "/dashboard": (BuildContext context) => new DashboardScreen(),
    "/alphabets": (BuildContext context) => new CategoryScreen(),
    "/viewlearn": (BuildContext context) => new ViewLearnScreen(),
    "/play_learn": (BuildContext context) => new PlayLearnScreen(),
    "/audio": (BuildContext context) => new AudioScreen(),
    "/Tabs": (BuildContext context) => new TabsScreen(),
    "/habits": (BuildContext context) => new HabitsScreen(),
    "/audioplayer": (BuildContext context) => new AudioPlayerScreen(),
    "/maths": (BuildContext context) => new MathsScreen(),
    "/mathsCategory": (BuildContext context) => new MathsCategoryScreen(),
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Flat App",
      home: DashboardScreen(),
      theme: ThemeData(
        primaryColor: Color(0xffFFFFFF),
      ),
      routes: routes,
    ));
  }
}


