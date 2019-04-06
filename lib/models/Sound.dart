import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

abstract class ListItem {}

class Sound implements ListItem {
  final String title;
  final String subtitle;
  final String soundUrl;
  final AssetImage img;
  static AudioCache player = new AudioCache();

  Sound({this.title, this.subtitle, this.img,this.soundUrl});

  void sound(){
    player.play(this.soundUrl);
  }
}