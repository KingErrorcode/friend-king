import 'package:flutter/material.dart';
import 'package:flutter_application_1/datamodel.dart';
import 'main.dart';
import 'Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MenuScreen extends StatelessWidget {
  List<Teamodel> drinkDetail = [
    Teamodel(drinkname: 'Milk  Tea', size: 'S/M/L', price: 50,images: 'images/Milktea.png'),
    Teamodel(drinkname: 'fruit Tea', size: 'S/M/L', price: 50,images: 'images/fruittea.png'),
    Teamodel(drinkname: 'Triple Tea', size: 'S/M/L', price: 60,images: 'images/milkchoco.png'),
    Teamodel(drinkname: 'choco Tea', size: 'S/M/L', price: 40,images: 'images/choco.png'),
    Teamodel(drinkname: 'TripleFruit Tea', size: 'S/M/L', price: 70,images: 'images/TangMo.png'),

  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("MENU"),
        titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'Oswald',color: Colors.white),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 240, 170, 65),
        elevation: 4,
      ),     
      body: ListView.builder(
        itemCount: drinkDetail.length,
        itemBuilder: (context, index) {
          var MenuList = drinkDetail[index];
          return ListTile(
            leading: Image.asset(MenuList.images),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(MenuList.drinkname),
                Text(MenuList.price.toString()),
              ],
            ),
            subtitle: Text(MenuList.size),
            onTap: (){
              print("คุณเลือกเมนูที่ชื่อว่า"+ MenuList.drinkname);
            },
          );
        },
      ), 
    );
  }
}