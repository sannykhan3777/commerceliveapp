import 'dart:async';

import 'package:commerceliveapp/screens/signin_screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => SignInScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.3,
              ),
              // logo here
              Image.asset(
                'assets/logo.png',
                height: 150,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFdb4437),),
              ),
              SizedBox(
                height: height * 0.3,
              ),
              Text("2021 Copyright ©" , style: TextStyle(color: Colors.white),)

            ],
          ),

        ),
      ),
    );
  }
}