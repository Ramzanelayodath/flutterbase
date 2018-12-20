import 'package:flutter/material.dart';

void main() => runApp(MyApp());
TextEditingController usernamecontroller = new TextEditingController();
TextEditingController passwordcontroller = new TextEditingController();
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Beegains"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Listview(),
      ),
    );
  }
}

class Listview extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          Text("Ramzan",style: TextStyle(fontSize: 25.0)),
          Text("Shani",style: TextStyle(fontSize: 25.0)),
          Text("Mukund",style: TextStyle(fontSize: 25.0)),
          Text("Yaseen",style: TextStyle(fontSize: 25.0)),
          Text("Fansad",style: TextStyle(fontSize: 25.0)),
          Text("Tinson",style: TextStyle(fontSize: 25.0)),
          Text("Alphonsa",style: TextStyle(fontSize: 25.0)),
          Text("Riyas",style: TextStyle(fontSize: 25.0))

        ],
      )
    );
  }

}








