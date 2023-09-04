import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:par_king/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;

  @override
  void initState()
  {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _topAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem(tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight), weight: 1,),
        TweenSequenceItem(tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight), weight: 1,),
        TweenSequenceItem(tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft), weight: 1,),
        TweenSequenceItem(tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft), weight: 1,)
      ],
    ).animate(_controller);
    _bottomAlignmentAnimation = TweenSequence<Alignment>(
      [
        TweenSequenceItem(tween: Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.bottomLeft), weight: 1,),
        TweenSequenceItem(tween: Tween<Alignment>(begin: Alignment.bottomLeft, end: Alignment.topLeft), weight: 1,),
        TweenSequenceItem(tween: Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight), weight: 1,),
        TweenSequenceItem(tween: Tween<Alignment>(begin: Alignment.topRight, end: Alignment.bottomRight), weight: 1),
      ],
    ).animate(_controller);

    _controller.repeat();
    Future.delayed(Duration(seconds: 3)).then((value)
    {
      _controller.stop();
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Home()));
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context,_)
        {
        return Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(gradient: LinearGradient(colors: const[
              Color(0xFFff9966),
              Color(0xFFff5e62),
            ],
            begin: _topAlignmentAnimation.value,
            end: _bottomAlignmentAnimation.value,
          )),
        child: Image.asset("assets/images/splash.png"),);
      }),
    );
  }
}