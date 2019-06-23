import 'package:flutter/material.dart';
import './ui/login_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import './ui/second_screen.dart';

void main()
{
  runApp(new MaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    title: "The Revels App",
    home: LoginScreen(),
    
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new LoginScreen(),
      title: new Text("Welcome",
      style: new TextStyle(),),
      image: new Image.asset("images/download.png"),
        backgroundColor: Colors.white,
        photoSize: 200.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.red
    );
  }
}
