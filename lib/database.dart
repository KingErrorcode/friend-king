import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'main.dart';

 
void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(MyApp());
}
 
class DatabasePage extends StatefulWidget {
  const DatabasePage({super.key});

  @override
  State<DatabasePage>createState() => _DatabasePageState();
}

class _DatabasePageState extends State<DatabasePage> {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final memberController = TextEditingController();
  late DatabaseReference dbRef;
  @override
  void initState(){
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Member');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(label: Text("Name")),
              ),
                TextField(
              controller: nameController,
              decoration: InputDecoration(label: Text("Age")),
              ),
               TextField(
              controller: nameController,
              decoration: InputDecoration(label: Text("Membernumber")),
              ),
              ElevatedButton(onPressed: (){
                Map<String,String> user = {
                  'name': nameController.text,
                  'age': ageController.text,
                  'Membernumber': memberController.text,

                };
                dbRef.push().set(nameController.text);
              }, child: Text("insert"))
            ],
          )),
    );
  }
}
