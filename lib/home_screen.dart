import 'package:flutter/material.dart';
import 'package:sport_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            RotatedText(),
            TenImage(),
            MessiImage(),
            FcbImage(),
            BottomContainer(),
          ],
        ),
      ),
    );
  }
}
