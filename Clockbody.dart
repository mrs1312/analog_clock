import 'package:flutter/material.dart';
import 'Clock_face.dart';
import 'clock_dial_painter.dart';

class Clockbody extends StatelessWidget{

  Clockbody();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
     aspectRatio: 1.0,
      child: Stack(
        alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 225,
                  height: 225,
                  decoration:BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        offset:Offset(0.0, 3.0),
                        blurRadius: 5.0,
                      )
                    ],
                  ),
                  child: Container(),
                ),
                Align(
                  alignment:  Alignment.center,
                  child: Container(
//                    decoration: BoxDecoration(
//
//          shape: BoxShape.circle,
//          color: Colors.grey
//                      ),
                    child: Center(
                      child: SizedBox(
                        height: 225,
                        width: 225,
                        child: ClockFace(),
                      ),
                    ),
                  ),
                )
              ]
          ),
    );
  }
}