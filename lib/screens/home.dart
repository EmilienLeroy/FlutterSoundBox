import 'package:flutter/material.dart';
import 'package:flutter_sound_box/widgets/BackgroundShape.dart';
import 'package:flutter_sound_box/widgets/SoundGridItem.dart';
import 'package:flutter_sound_box/data/sounds.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            elevation: 0,
            title: Text('DBS',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                shadows:
                [
                  new Shadow(color: Colors.black, offset: new Offset(1, 2), blurRadius: 5)
                ]
            )),
            centerTitle: true,
            backgroundColor: Colors.orangeAccent,
            automaticallyImplyLeading: false
        ),
        backgroundColor: Colors.deepOrangeAccent,
        body:  CustomPaint(
          painter: BackgroundShape(),
          child: new Container(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: new Center(
                child: new GridView.builder(
                    itemCount: sounds.length,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder:  (BuildContext context, int index){

                      final sound = sounds[index];
                      return new SoundGridItem(sound: sound,);

                    }
                )
            ),
          ),

        )
    );
  }
}