import 'package:flutter/material.dart';
import 'dart:math';

class MinuteHandPainter extends CustomPainter{
  final Paint minuteHandPaint;
  int minutes;
  int seconds;

  MinuteHandPainter({this.minutes,this.seconds}):minuteHandPaint=new Paint(){
//    minuteHandPaint.color=Color(0xFF333333);
    minuteHandPaint.color=Colors.white;
    minuteHandPaint.style=PaintingStyle.fill;
  }
  @override
  void paint(Canvas canvas, Size size) {
    final radius=size.width/2;
    canvas.save();
    canvas.translate(radius, radius);

    canvas.rotate(2*pi*((this.minutes+(this.seconds/60))/60)); //rotation of minute hand

    Path path=new Path();
    path.moveTo(-2.5, -radius+15.0);
    //path.lineTo(-5.0, -radius/1.8);
    path.lineTo(-2.0, 0.0);
    path.lineTo(2.0, 0.0); //behind the center part
    //path.lineTo(5.0, -radius/1.8);
    path.lineTo(2.5, -radius+15.0);
    path.close();

    canvas.drawPath(path,minuteHandPaint);
    canvas.drawShadow(path, Colors.black87, 4.0, false);

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}