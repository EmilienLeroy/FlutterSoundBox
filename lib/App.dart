import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sound_box/screens/home.dart';

//main class
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //init the status bar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color(0xfff08114),
    ));
    //generate a material app
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DBZ QUEBECOIS',
      theme: new ThemeData(
        primaryColor: Color(0xfff08114),
      ),
      home: new HomeScreen(),
      routes: <String, WidgetBuilder>{
        // define the routes
      },
    );
  }
}
