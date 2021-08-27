import 'dart:async';
import 'package:commerceliveapp/screens/call_screen.dart';
import 'package:commerceliveapp/screens/home_screen.dart';
import 'package:commerceliveapp/screens/livecall_screen.dart';
import 'package:commerceliveapp/screens/signin_screen.dart';
import 'package:commerceliveapp/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Roboto" , accentColor: Colors.red),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


