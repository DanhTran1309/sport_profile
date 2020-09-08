import 'package:flutter/material.dart';

class RotatedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Positioned(
      right: 8,
      top: _height * 0.15,
      child: RotatedBox(
        quarterTurns: -1,
        child: Text(
          "LIONEL MESSI",
          style: TextStyle(
            color: Color(0xffB5D9E8),
            fontSize: 40,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
