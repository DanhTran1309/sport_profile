import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sport_app/widgets/widgets.dart';

class BottomContainer extends StatefulWidget {
  @override
  _BottomContainerState createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _bottomAnimation;

  @override
  void initState() {
    _controller = AnimationController(duration: Duration(milliseconds: 700), vsync: this);
    _bottomAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeInOutQuart);

    _controller.addListener(() {setState(() {});});
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Positioned(
      right: 16,
      left: 16,
      bottom: 16,
      child: AnimatedBuilder(
        animation: _bottomAnimation,
        builder: (context, snapshot) {
          return Transform.translate(
            offset: Offset(0,_height / 2.5*(1-_bottomAnimation.value)),
            child: Stack(
              children: [
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: Container(
                      height: _height / 2.95,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                DetailsWidget(),
              ],
            ),
          );
        }
      ),
    );
  }
}
