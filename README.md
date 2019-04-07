
# Flutter Sound Box
[![License][license-image]][license-url]

A simple sound box. With this project you can create fastly your own sound box. Just clone this repo and add your sound into the assets folder. After just init your data into the *sounds* file. It's easy to use and fun :D

## Example 

<p align="center">
  <img  src="https://raw.githubusercontent.com/EmilienLeroy/FlutterSoundBox/master/assets/example.gif">
</p>


## RoadMap

- [x] Grid view with img and title
- [x] Splash screen
- [x] Play a sound
- [ ] Fav a sound
- [ ] Sort sounds
- [ ] Filter sounds
- [ ] Animate sound item
- [ ] Tests

## Getting Started

First clone the project :

```
git clone https://github.com/EmilienLeroy/FlutterSoundBox.git
```

> Add your sound and image into the assets folder.

After just init your sound into the lib/data/sounds.dart file like this :

```dart
final List<Sound> sounds = [
  new Sound(
    title: "title",
    subtitle: "subtitle",
    img: new AssetImage("assets/image.jpg"),
    soundUrl: 'sounf.mp3'
  ),
  new Sound(
      title: "title 2",
      subtitle: "subtitle 2",
      img: new AssetImage("assets/image2.jpg"),
      soundUrl: 'image2.mp3'
  )
];
```

And that's all ;)

## Dependency

| Name        | Description| Repo |
| ------------------ |-------------| ----- |
| audioplayers       | Plugin to work with sound easly | https://github.com/luanpotter/audioplayers |
| splashscreen       | Easy way to create a splash screen | https://github.com/KarimMohamed2005/SplashScreenFlutterPackage |


## Contribute

We would love you for the contribution to ``Flutter Sound Box`` project, check the ``LICENSE`` file for more info.


## License

Distributed under the MIT license. See ``LICENSE`` for more information.

[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
