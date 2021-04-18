import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash/opt_screen.dart';

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState();
  }
  
  
}
class SplashState extends State<Splash>{
  @override
  void initState() {

    startTime();
  }


  startTime() async {
    var duration = new Duration(seconds: 3);
    return Timer(duration, _startNextScreen);
  }

  _startNextScreen() {



    Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Otp()));
     }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/bg.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

          ),
          Scaffold(
              backgroundColor: Colors.transparent,

              body:Center(
                child: Image.asset("assets/logo.png"),
              )
          
          )
        ],
      )
    );
  }

}