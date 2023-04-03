import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'Menupage.dart';
import 'Memberpage.dart';
import 'database.dart';


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
    MemberPage()
    //DatabasePage(),
    
  
  ];
@override
Widget build(BuildContext context){
  return Scaffold(
    body: screen[_index],
    backgroundColor: Colors.white,
    bottomNavigationBar: CurvedNavigationBar(
      onTap: (value){
        setState(() {
          _index = value;
        });
      },
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      color: Color.fromARGB(255, 243, 171, 65),
      animationDuration: Duration(milliseconds: 300),
      items: [
        Icon(Icons.home),
        Icon(Icons.menu),
        Icon(Icons.shopping_cart),
      ],
    ),
    // body: screen[_index],
    // bottomNavigationBar: BottomNavigationBar(
    //     currentIndex: _index,
    //     onTap: (value){
    //       setState(() {
    //         _index = value;
    //       });
    //     },
    //       backgroundColor: Color.fromARGB(255, 240, 170, 65),
    //       items:[
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         label: 'Home',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.menu),
    //         label: 'Menu',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.group),
    //         label: 'รายชื่อลูกค้า',
    //       ),
    //     ],
    //   ),
  );
}
}