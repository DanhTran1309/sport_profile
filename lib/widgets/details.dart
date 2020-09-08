import 'package:flutter/material.dart';

class DetailsWidget extends StatefulWidget {
  @override
  _DetailsWidgetState createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _cupsAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(milliseconds: 800), vsync: this);
    _cupsAnimation = CurvedAnimation(parent: _controller, curve: Curves.ease);
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
      right: 16,
      left: 16,
      bottom: 16,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  textDetail(
                    title: 'Age',
                    value: '33',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  textDetail(
                    title: 'Number',
                    value: '10',
                  ),
                ],
              ),
              Container(
                width: 1,
                height: _height*0.1,
                color: Colors.white70,
              ),
              Column(
                children: [
                  textDetail(
                    title: 'Height(m)',
                    value: '1.70',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  textDetail(
                    title: 'Caps/Goals',
                    value: '138/70',
                  ),
                ],
              ),
              Container(
                width: 1,
                height: _height*0.1,
                color: Colors.white70,
              ),
              Column(
                children: [
                  textDetail(
                    title: 'Weight(kg)',
                    value: '72',
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  textDetail(
                    title: 'Position',
                    value: 'Forward',
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: _width * 0.8,
            height: 1,
            color: Colors.white70,
          ),
          SizedBox(
            height: 8,
          ),
          AnimatedBuilder(
            animation: _cupsAnimation,
            builder: (context, snapshot) {
              return Transform.translate(
                offset: Offset(_width*(1-_cupsAnimation.value),0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    cups(
                      image: 'assets/images/bestplayer.png',
                      count: '6',
                    ),
                    cups(
                      image: 'assets/images/golden_ball.png',
                      count: '6',
                    ),
                    cups(
                      image: 'assets/images/eutopean_cham.png',
                      count: '4',
                    ),
                    cups(
                      image: 'assets/images/kingspain.png',
                      count: '6',
                    ),
                    cups(
                      image: 'assets/images/spanish_cup.png',
                      count: '10',
                    ),
                  ],
                ),
              );
            }
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            width: _width * 0.8,
            height: 1,
            color: Colors.white70,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Full Bio',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget textDetail ({title, value}) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: Colors.white70,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
  Widget cups({image,count}) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 50,
        ),
        SizedBox(height: 4,),
        Text(
          count,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
