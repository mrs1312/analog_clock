import 'package:analog_clock/main.dart';
import 'package:flutter/material.dart';
import 'package:analog_clock/clock_dial_painter.dart';
import 'clock_hands.dart';
import 'dart:math';

class ClockFace extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
//    return CustomPaint(
//      painter: ClockDialPainter(clockText: ClockText.roman),
//
//    );
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black87,
        ),

        child:Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              //alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              padding:EdgeInsets.all(6.0),
              child:CustomPaint(
                painter: ClockDialPainter(clockText: ClockText.roman),
              ),
            ),
            Container(
              width: 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
            //clock hands go here
            ClockHands(),
          ],
        ),
      ),
    );
  }
}