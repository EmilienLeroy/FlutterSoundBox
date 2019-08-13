import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:SekaiUchiha/screens/home.dart';
import 'package:splashscreen/splashscreen.dart';

//main class
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //init the status bar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color(0xffbc0000),
    ));

    var splashScreen =  new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new HomeScreen(),
        title: Text('Sekai Uchiha',style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            shadows:
            [
              new Shadow(color: Colors.black45, offset: new Offset(1, 2), blurRadius: 5)
            ]
        )),
        backgroundColor: Color(0xffbc0000),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.white
    );

    //generate a material app
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sekai Uchiha',
      theme: new ThemeData(
        primaryColor: Color(0xffbc0000),
      ),
      home: splashScreen,
      routes: <String, WidgetBuilder>{
        // define the routes
      },
    );
  }
}
