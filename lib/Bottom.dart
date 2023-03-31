import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'Homepage.dart';


class BottomTapBar extends StatefulWidget{
  BottomTapBar({Key?key}) : super(key: key);

  @override
  State<BottomTapBar> createState() => _BottomTapBarState();
}

class _BottomTapBarState extends State<BottomTapBar> {

  int _index = 0;
  final screen = [
    HomePage(),
    MenuScreen(),
  
  ];
@override
Widget build(BuildContext context){
  return Scaffold(
    body: screen[_index],
    bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value){
          setState(() {
            _index = value;
          });
        },
          backgroundColor: Color.fromARGB(255, 240, 170, 65),
          items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'รายชื่อลูกค้า',
          ),
        ],
      ),
  );
}
}