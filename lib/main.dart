import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'container',
      theme : ThemeData(
        primarySwatch: Colors.red
      ),
      home: const Home(),
    );
  }
}


class Home  extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body :  Center(
        child : Container(
       
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: const Text("hello world"),
          width: 200,
          height: 200,
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            color: Colors.blue,
            // borderRadius: const BorderRadius.all(Radius.circular(4.0)), 
            boxShadow: const [
              // ignore: prefer_const_constructors
              BoxShadow(
                color: Colors.red,
                blurRadius: 4.0,
                spreadRadius: 2.0
              )
            ],
            gradient: const LinearGradient(
              begin : Alignment.topCenter,
              end:Alignment.centerRight,
              colors: [
                Colors.red,
                Colors.lightBlue
              ]
              
            ),
            shape: BoxShape.circle
          ),
          
        )
      )
    );
  }
}