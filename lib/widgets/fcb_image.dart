import 'package:flutter/material.dart';

class FcbImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 16,
      top: 16,
      child: Image.asset(
        'assets/images/fcb.png',
        width: 40,
      ),
    );
  }
}
