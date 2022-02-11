import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Container (

      alignment: Alignment.topLeft,
        //decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 3), ),
      color: Colors.green,
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,


      children:  [
          Container(
            margin: new EdgeInsets.symmetric(vertical: 40.0),
            color: Colors.blue,
            width: 100,
            height: 50,
          ),
        Container(
          margin: new EdgeInsets.symmetric(vertical: 40.0),
          color: Colors.blue,
          width: 100,
          height: 50,


        ),
        Container(
          margin: new EdgeInsets.symmetric(vertical: 40.0),

          color: Colors.blue,
          width: 100, height: 50,


        )
      ],
    ))
    );
  }
}
