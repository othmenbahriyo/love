import 'dart:async';

import 'package:dorra/contenu.dart';
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
 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {return Home();}));
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
            child:  Center(child: Lottie.asset('assets/love.json'),),
          ),


        ));
  }
}
