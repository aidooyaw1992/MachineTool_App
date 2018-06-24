import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => new HomeScreen(),
};

void main() => runApp(new MaterialApp(
    title: 'WERKZEUG 4.0',
    theme:
    new ThemeData(primaryColor:Colors.red,accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
    routes: routes ));
