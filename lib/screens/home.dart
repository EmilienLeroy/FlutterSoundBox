import 'package:flutter/material.dart';
import 'package:SekaiUchiha/widgets/BackgroundShape.dart';
import 'package:SekaiUchiha/widgets/SoundGridItem.dart';
import 'package:SekaiUchiha/data/sounds.dart';

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
            title: Text('Sekai Uchiha',style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                shadows:
                [
                  new Shadow(color: Colors.black45, offset: new Offset(1, 2), blurRadius: 5)
                ]
            )),
            centerTitle: true,
            backgroundColor: Color(0xffbc0000),
            automaticallyImplyLeading: false
        ),
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