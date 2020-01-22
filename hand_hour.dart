import 'dart:math';
import 'package:flutter/material.dart';

class HourHandPainter extends CustomPainter{
  final Paint hourHandPaint;
  int hours;
  int minutes;
  int seconds;
  double angleRadians;

  //make sure to put the angleRadians along with the variables declared in the class in the parameter
  HourHandPainter({this.hours,this.minutes,this.seconds,this.angleRadians}):hourHandPaint=new Paint(){
    hourHandPaint.color=Colors.white;
    hourHandPaint.style=PaintingStyle.fill;
  }

  //accordingly fill up the paint() to implement the declared variables and make the clock functioning
  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width/2;
    canvas.save(); //To Draw Hour Hand
    canvas.translate(radius, radius);
    //Checks if hour is greater than 12 before calculating the rotation
    //Rotation of hour hand.Make sure to Put the angle in Radians in Hourhandpainter property parameter
    canvas.rotate(this.hours>=12? 2*pi*((this.hours-12)/12 + (this.minutes/720)): 2*pi*((this.hours/12)+ (this.minutes/720))
    );

    Path path=new Path();

    //heart shaped head for the hour hand => the lines i have commented out.
    //Other lines are to decide the position & length of the hour hand(right here accordingly in the hand _minute.dart & hand_second.dart).

    path.moveTo(0.0, -radius+5.0);
//    path.quadraticBezierTo(-3.5, -radius + 25.0, -15.0, -radius+radius/4);
//    path.quadraticBezierTo(-20.0, -radius+radius/3, -7.5, -radius+radius/3);
    path.lineTo(0.0, -radius+radius/4);
//    path.lineTo(7.5, -radius+radius/3);
//    path.quadraticBezierTo(20.0, -radius+radius/3, 15.0, -radius+radius/4);
//    path.quadraticBezierTo(3.5, -radius + 25.0, 0.0, -radius+15.0);

    //hour hand stem
    path.moveTo(-2.0, -radius+radius/4);
    //path.lineTo(-5.0, -radius+radius/2);
    path.lineTo(-3.0, 0.0);
    path.lineTo(3.0, 0.0);
    //path.lineTo(5.0, -radius+radius/2);
    path.lineTo(3.0, -radius+radius/4);
    path.close();
    
    canvas.drawPath(path, hourHandPaint);
    canvas.drawShadow(path, Colors.black87, 2.0, false);

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {

    return true;
  }


}
