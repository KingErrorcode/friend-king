import 'package:flutter/material.dart';
import 'package:flutter_application_1/datamodel.dart';
import 'main.dart';

void main() {
  runApp(const MyApp());
}

class HomeScreen extends StatelessWidget {
  //สร้างข้อมูลรายการหนังสือ
  List<Teamodel> drinkDetail = [
    Teamodel(drinkname: 'Thai Tea', size: 'S/M/L', price: 50),
    Teamodel(drinkname: 'fruit Tea', size: 'S/M/L', price: 50),
    Teamodel(drinkname: 'Triple Tea', size: 'S/M/L', price: 60),

  ];
@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("___MENU___"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 240, 170, 65),
        elevation: 4,
      ),     
      body: ListView.builder(
        itemCount: drinkDetail.length,
        itemBuilder: (context, index) {
          var bookList = drinkDetail[index];
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(bookList.drinkname),
                Text(bookList.price.toString()),
              ],
            ),
            subtitle: Text(bookList.size),
          );
        },
      ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 240, 170, 65),
          items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
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