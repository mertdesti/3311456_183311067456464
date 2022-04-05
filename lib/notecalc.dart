// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class PageCalc extends StatelessWidget {
  const PageCalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent,
        title: new Text("Ders Ortalaması Hesaplama"),
      ),
      body: new Text(
        "",
        textAlign: TextAlign.center,
      ),
    );
  }
}
