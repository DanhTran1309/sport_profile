import 'package:flutter/material.dart';

class TenImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Positioned(
      left: 20,
      top: 0,
      child: Image.asset(
        'assets/images/10.png',
        width: _width * 0.6,
        fit: BoxFit.cover,
        color: Color(0xff0A315C),
      ),
    );
  }
}
