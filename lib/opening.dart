import 'dart:async';

import 'package:dorra/contenu.dart';
import 'package:dorra/crush.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class open extends StatefulWidget {
  @override
  _openState createState() => _openState();
}

class _openState extends State<open> {



  startTime() async {
    var _duration = new Duration(seconds: 7);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {return MainPage();}));
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      startTime();
    });
  }




  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return RepaintBoundary(
        child: Material(
          child: Container(
            decoration: new BoxDecoration(
                color: Color(0xffF9DBE7)
            ),
            child:  Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("DORRA",style: TextStyle(color:Color(0xFFEE507A),fontSize: 35,
                  fontWeight: FontWeight.bold,fontFamily: 'Pacifico',
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(10.0, 10.0),
                      blurRadius: 8.0,
                      color: Colors.white,

                    ),
                  ],
                ),),
                Lottie.asset(
                    'assets/sad.json',
                  height:400,


                ),
              ],
            ),),
          ),


        ));
  }
}
