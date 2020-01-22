import 'dart:async';
import 'package:analog_clock/hand_second.dart';
import 'package:flutter/material.dart';
import 'hand_hour.dart';
import 'hand_minute.dart';
import 'hand_second.dart';

class ClockHands extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return  _ClockHandState();
  }
}

class _ClockHandState extends State<ClockHands> {
  Timer _timer;
  DateTime dateTime;

  void initState(){
    super.initState();
    dateTime=DateTime.now();
    _timer=Timer.periodic(Duration(seconds: 1), setTime);
  }

  void setTime(Timer timer){
    setState(() {
      dateTime=DateTime.now();
    });
  }

  void dispose(){
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        width: double.infinity,
//        decoration: BoxDecoration(
//          shape: BoxShape.circle,
//          color: Colors.indigo
        //),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            CustomPaint(painter: HourHandPainter(hours: dateTime.hour,minutes: dateTime.minute),),
            CustomPaint(painter: MinuteHandPainter(minutes: dateTime.minute, seconds: dateTime.second),),
            CustomPaint(painter: SecondHandPainter(seconds: dateTime.second)),
          ],
        ),
      ),
    );
  }

}