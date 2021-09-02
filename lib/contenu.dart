import 'dart:async';

import 'package:circular_countdown/circular_countdown.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:dorra/crush.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:timer_count_down/timer_count_down.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  startTime() async {
    var _duration = new Duration(seconds: 10);
    return new Timer(_duration, navigationPage);
  }

   navigationPage() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(11.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            content: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("assets/surprise.gif",),
                    fit: BoxFit.contain,
                  ),
                ),
              width: 300.0,
              height: 340,
              child: Stack(
                children: [

                  Positioned(
                      top: MediaQuery.of(context).size.height * 0.01,
                      left: MediaQuery.of(context).size.width * 0.065,
                      right: MediaQuery.of(context).size.width * 0.065,
                      child: Center(child: Lottie.asset('assets/loveletter.json'),)),
                  Positioned(
                      top: MediaQuery.of(context).size.height * 0.04,
                      left: MediaQuery.of(context).size.width * 0.065,
                      right: MediaQuery.of(context).size.width * 0.065,
                      child: Center(child: Text("i have a",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),)),
                  Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.074,
                      left: MediaQuery.of(context).size.width * 0.065,
                      right: MediaQuery.of(context).size.width * 0.065,
                      child: Center(child: Text("crush on you \n DORRA",textAlign: TextAlign.center  ,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),)),


                ],
              )
            ),
          );
        }).then((value) {
          setState(() {
            isscount = false;
          });
    });
  }
  @override
  void initState() {
    super.initState();
    setState(() {
    });
  }
 bool isscount = true;

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      body: Container(

         child:  Center(
           child: Center(
             child: TimeCircularCountdown(
               diameter: 250,
               countdownTotal: 10,
               countdownCurrentColor: Color(0xFFFE5F55),
               countdownRemainingColor: Color(0xFF4F6367),
               countdownTotalColor: Colors.transparent,
               unit: CountdownUnit.second,
                 onFinished: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {return MainPage();}));
                 },
               textStyle: TextStyle(
                 color: Color(0xFFFE5F55),
                 fontSize: 90,
               ),
             ),
           ),
         )


         /* add child content here
         *  Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(11),
             color: Colors.white,
             image: DecorationImage(
               image: AssetImage("assets/maried.png",),
               fit: BoxFit.contain,
             ),
           ),
           child: Stack(
             children: [
               Positioned(
                   top: MediaQuery.of(context).size.height * 0.0,
                   left: MediaQuery.of(context).size.width * 0.7,
                   right: MediaQuery.of(context).size.width * 0,
                   child: Center(child: Lottie.asset('assets/lovetop.json',width: 200,height: 200),)),
               Positioned(
                   top: MediaQuery.of(context).size.height * 0.0,
                   right: MediaQuery.of(context).size.width * 0.7,
                   left: MediaQuery.of(context).size.width * 0,
                   child: Center(child: Lottie.asset('assets/lovetop.json',width: 200,height: 200),)),
               Positioned(
                   bottom: MediaQuery.of(context).size.height * 0.0,
                   right: MediaQuery.of(context).size.width * 0.7,
                   left: MediaQuery.of(context).size.width * 0,
                   child: Center(child: Lottie.asset('assets/minlouta.json',width: 200,height: 200),)),
               Positioned(
                 top: MediaQuery.of(context).size.height * 0.3,
                 right: MediaQuery.of(context).size.width * 0,
                 left: MediaQuery.of(context).size.width * 0,
                 child: Container(
                   color: Colors.transparent,
                   child: RichText(
                     softWrap: true,
                     textAlign: TextAlign.center,
                     text: TextSpan(
                       style: TextStyle(
                         color: Colors.black,
                         fontSize: 15.0,
                       ),
                       children: [
                         TextSpan(
                           text:
                           "تعالى نجلس بين الشموع و نرقص تحت رذاذ المطر\n"
                               "هيا نعانق نجم السماء و نحلم كيف يكون القمر\n"

                               "فكم امسيت ارجوكى حلما يراود مهجتى و النظر\n"
                               "فان كنت فى الحب لحنا فانتى العزف و انتى الوتر\n"

                               "و ان كنت يوما امير القلوب فحسنك تاج لكل البشر\n"
                               "بعينك ابصرت كل الغرام و ابصرت حبا يفوق القدر\n"

                               "و اشعر بهمسك همس الحرير عصفور يغرد فوق الشجر\n"
                               "انتى المنى و انتى الغرام و انتى ضياءا عند الشفق\n"

                               "كان غرامك جاء الفؤاد يفجر عشقا حتى احترق\n"
                               "كان جمالك سهم الحسان جاء سريعا ثم اخترق\n"

                               "نظرت لعينيكى فى الفجر يوما فجاء السهم بل و انطلق\n"
                               "انا الماهر فى بحور النساء نظرت لعينيكى قلبى غرق ؟\n"

                               "فرفقا بقلبى اذا ما نظرتى ساخجل بل قد يعترينى العرق\n"
                               "فمن حسنك غارت كل النساء و منه ايضا ياتى الارق\n"
                               "",
                           style: TextStyle(
                               fontSize: 17
                           ),
                         ),

                       ],
                     ),
                   ),
                 ),),
             ],
           ),
         ),
         *
         *  */
      ),
    );
  }
}
