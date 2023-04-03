import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Bottom.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'Menupage.dart';
import 'package:flutter_application_1/main.dart';


void main()  {
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
      CupertinoPageRoute(builder: (ctx)=>BottomTapBar())
    );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/logoptea.png',width: 300,
          ),
          SizedBox(
            height: 10,
          ),
          SpinKitChasingDots(
          color: Colors.black,
          size: 50,
          ),
        ],
      ),
      ),
    );
  }
}



//----------------------------------------------//
// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   late DatabaseReference dbRef;
//   @override
//   void initState(){
//     super.initState();
//     dbRef = FirebaseDatabase.instance.ref().child('Member');
//   }
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }