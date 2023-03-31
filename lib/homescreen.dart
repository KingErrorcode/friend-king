import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const MyApp());
}

class HomeScreen extends StatelessWidget {
@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buddahist charm"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 4,
      ),
      body: SizedBox( 
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
          Icon(
            Icons.sell,
            size: 200,
            color: Colors.black,
          ),
          Text(
            "SELL",
            style: TextStyle(
              fontSize: 35,fontWeight: FontWeight.bold,color: Colors.red),
            )
          ],
         ) 
        ),
    );
  }
}