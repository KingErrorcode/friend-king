import 'dart:html';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key?key}): super(key: key);

  @override
  State<HomePage>createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
          Container(
            width: 300,
            height: 300,
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
          child: Text("Welcome!")
        );
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height *0.2,
          child: Stack(
            children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: size.height * 0.2-27,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 171, 65),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Row(
                children: [
                  Text("TP Milk Tea ",style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                    
                  ),
                ],
              ),
             ),
             Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [ BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kDefaultIconDarkColor.withOpacity(0.23)
                  ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.black.withOpacity(0.5),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ))
            ],
          ),
        ),
        Container(
          child: CircleAvatar(backgroundImage: AssetImage('images/logoptea.png'),
          radius: 100,

          child: Align(
            alignment:Alignment(0, 1.7),
            child: Text("Welcome!",
            style: TextStyle(fontSize: 40,fontFamily: 'Oswald',color: Colors.black
            ),
          ),
        ),
        ),
      ),
      ],
    );
  }
}
