import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class PantallaForm extends StatefulWidget {
  PantallaForm({Key key}) : super(key: key);

  @override
  _PantallaFormState createState() => _PantallaFormState();
}

class _PantallaFormState extends State<PantallaForm> {

  List links = [
    "https://steamuserimages-a.akamaihd.net/ugc/940586530515504757/CDDE77CB810474E1C07B945E40AE4713141AFD76/",
    "https://i.pinimg.com/originals/ef/7f/b1/ef7fb1b37078b6a2aef8e40710446bfa.jpg",
    "https://cutewallpaper.org/21/wallpapers-1920-1080/Download-wallpaper-1920x1080-bird,-silhouette,-vector-.jpg",
    "https://wallpaperaccess.com/full/941788.jpg"
  ];

  var imagen = "https://wallpaperaccess.com/full/941788.jpg";

  @override
  Widget build(BuildContext context) {
    return _image();
  }

  Widget _image() { 
    Timer(Duration(seconds: 45), () {
      Random random = new Random();
      setState(() { 
        imagen = links[random.nextInt(links.length)];
        print(imagen);
      });
    });
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
          imagen
          ),
          fit: BoxFit.cover
        ),
      )
    );
  }
}