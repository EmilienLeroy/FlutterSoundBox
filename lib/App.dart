import 'package:flutter/material.dart';
import 'package:flutter_sound_box/screens/home.dart';

//main class
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //generate a material app
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test',
      theme: new ThemeData(
        primaryColor: Colors.black,
      ),
      home: new HomeScreen(),
      routes: <String, WidgetBuilder>{
        // define the routes
      },
    );
  }
}
