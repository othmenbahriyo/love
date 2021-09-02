import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration:  const BoxDecoration(

          gradient:  LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 0.0),
            colors: [
              Color(0xFFFFF9C4),
              Color(0xFFFFCDD2),
            ],
          ),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            SizedBox(height: 20,),
            Text("I love you",style: TextStyle(color:Color(0xFFEE507A),fontSize: 40,
              fontWeight: FontWeight.bold,fontFamily: 'Pacifico',
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(10.0, 10.0),
                  blurRadius: 8.0,
                  color: Colors.white,

                ),
              ],
            ),),
            Text("my all",style: TextStyle(color:Color(0xFFEE507A),fontSize: 40,
              fontWeight: FontWeight.bold,fontFamily: 'Pacifico',
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(10.0, 10.0),
                  blurRadius: 8.0,
                  color: Colors.white,

                ),
              ],
            ),),
            Image.asset("assets/heart.png",width: 300.0,),
            Text("Dorra",style: TextStyle(color:Color(0xFFEE507A),fontSize: 40,
              fontWeight: FontWeight.bold,fontFamily: 'Pacifico',
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(10.0, 10.0),
                  blurRadius: 8.0,
                  color: Colors.white,

                ),
              ],
            ),),
          /*  Text("DORRA",style: TextStyle(color:Color(0xFFEE507A),fontSize: 50,
              fontWeight: FontWeight.bold,fontFamily: 'Pacifico',
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(10.0, 10.0),
                  blurRadius: 8.0,
                  color: Colors.white,

                ),
              ],
            ),),*/
            Align(
              alignment: Alignment.bottomRight,
              child: Lottie.asset('assets/minlouta.json',width: 200,height: 170) ,
            )

          ],
        ),
      ),
    );
  }
  void navigateToQuestions(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return Scaffold(
        );
      },
    ));
  }
}