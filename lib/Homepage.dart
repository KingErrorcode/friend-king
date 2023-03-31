import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key?key}): super(key: key);

  @override
  State<HomePage>createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text('Welcome',style: TextStyle(
            fontSize:30,
            fontFamily: 'Oswald'
            )),
         ),
      ),
    );
  }
}