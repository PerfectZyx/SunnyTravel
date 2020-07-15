import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync:this, duration:Duration(milliseconds: 3000));
    _animation = Tween(begin:0.0, end:1.0).animate(_controller);
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Tabs()), (route) => route==null);
      }
    });
    _controller.forward();
  }
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.asset(
        "images/splash.jpg",
        fit: BoxFit.cover
      )
    );
  }
}