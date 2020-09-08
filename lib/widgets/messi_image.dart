import 'package:flutter/material.dart';

class MessiImage extends StatefulWidget {
  @override
  _MessiImageState createState() => _MessiImageState();
}

class _MessiImageState extends State<MessiImage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _imageAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _imageAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInExpo);
    _controller.addListener(() {
      setState(() {});
    });
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
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        height: _height / 2.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Color(0xff0A315C),
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              right: 16,
              left: 16,
              bottom: _height * 0.2,
              child: AnimatedBuilder(
                animation: _imageAnimation,
                builder: (context, snapshot) {
                  return Transform.translate(
                    offset: Offset(-200 * (1 - _imageAnimation.value), 0),
                    child: Image.asset('assets/images/messi.png'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
