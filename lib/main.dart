import 'package:flutter/material.dart';
import 'game .dart';
import 'mygame.dart';
void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.lightBlueAccent,
      debugShowCheckedModeBanner:false,
      home: MyHomePage(),
    );
  }
  }
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key?key}) : super(key: key);

  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Spicemoney'),
        ),
        body:
        MyGame(),
    );
  }
}
