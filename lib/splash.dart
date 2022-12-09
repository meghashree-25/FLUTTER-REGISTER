import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterregister/onBoarding.dart';


class SplashScreen  extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return OnBoardingPage();
    }));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: Lottie.asset('assets/news_yellow.json'),

      ),
    );
  }
}
