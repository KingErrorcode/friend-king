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
          child: Text('รายชื่อสมาชิก',style: TextStyle(
            fontSize:30,
            fontFamily: 'Oswald'
            )),
         ),
      ),
    );
  }
}