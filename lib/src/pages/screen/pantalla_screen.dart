import 'package:backgound/src/pages/screen/pantalla_form.dart';
import 'package:flutter/material.dart';

class PantallaScreen extends StatelessWidget {
  const PantallaScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PantallaForm(),
      ),
    );
  }
}