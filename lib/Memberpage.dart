import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class MemberPage extends StatefulWidget {
  MemberPage({Key?key}): super(key: key);

  @override
  State<MemberPage>createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text('เลือกสินค้า',style: TextStyle(
            fontSize:30,
            fontFamily: 'Oswald'
            )),
         ),
      ),
    );
  }
}