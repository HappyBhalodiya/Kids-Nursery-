import 'package:flutter/material.dart';
import 'package:nursery_rhymes/screens/dashboard.dart';
import 'package:nursery_rhymes/screens/alphabets.dart';
import 'package:nursery_rhymes/screens/viewlearn.dart';


class Routes {
  var routes = <String, WidgetBuilder>{
    "/dashboard": (BuildContext context) => new DashboardScreen(),
    "/alphabets": (BuildContext context) => new AlphabetsScreen(),
    "/viewlearn": (BuildContext context) => new ViewLearnScreen(),

 
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Flat App",
      home: ViewLearnScreen(),
      theme: ThemeData(
        primaryColor: Color(0xffFFFFFF),
      ),
      routes: routes,
    ));
  }
}
