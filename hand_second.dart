import 'dart:math';
import 'package:flutter/material.dart';

class SecondHandPainter extends CustomPainter{
  final Paint secondHandpaint;
  final Paint secondhandPointPaint;

  int seconds;

  SecondHandPainter({this.seconds}):secondHandpaint=new Paint(),
  secondhandPointPaint=new Paint(){
    secondHandpaint.color=Colors.red;
    secondHandpaint.style=PaintingStyle.stroke;
    secondHandpaint.strokeWidth=2.0;

    secondhandPointPaint.color=Colors.red;
    secondhandPointPaint.style=PaintingStyle.fill;
  }
  @override
  void paint(Canvas canvas, Size size) {
    final radius=size.width/2;
    canvas.save();

    canvas.translate(radius, radius);
    
    canvas.rotate(2*pi*this.seconds/60);

    Path path1= new Path();
    Path path2 = new Path();
    path1.moveTo(0.0, -radius+5.0);
    path1.lineTo(0.0, radius/4);

    //path2.addOval(new Rect.fromCircle(radius: 7.0, center: new Offset(0.0, -radius)));
    path2.addOval(new Rect.fromCircle(radius: 5.0, center: new Offset(0.0, 0.0)));

  
    canvas.drawPath(path1, secondHandpaint);
    canvas.drawPath(path2, secondhandPointPaint);

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}