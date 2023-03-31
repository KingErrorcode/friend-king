import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
Widget build(BuildContext context){
  return MaterialApp(
    home: const Splash(),
  );
 }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((value){
    Navigator.of(context).pushReplacement(
      CupertinoPageRoute(builder: (ctx)=>HomeScreen())
    );

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SizedBox(
        width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/Logomonke.png',width: 300,
          ),
          SizedBox(
            height: 10,
          ),
          SpinKitFoldingCube(
          color: Colors.white,
          size: 50,
          ),
        ],
      ),
      ),
    );
  }
}