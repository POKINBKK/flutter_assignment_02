import 'package:flutter/material.dart';
import './ui/mainPage.dart';
import './ui/newSubject.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MainPage(),
        "/newsubject": (context) => NewSubject(),
      },
    );
  }
}
