import 'package:commerceliveapp/constants/constant_for_screens.dart';
import 'package:commerceliveapp/screens/livecall_screen.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.15,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50.0, vertical: 10.0),
                          child: Text(
                            // TODO 15: Here you will have to paste the title of the product from APIS
                            "Samsung 48 OLED TV ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: grey,
                                fontSize: 15.0),
                          ),
                        ),
                        Text(
                          // TODO 16: Here you will have to paste the price of the product from APIS
                          "Price \$300 , 20% discount",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: grey,
                              fontSize: 15.0),
                        ),
                        Container(
                          width: width * 0.7,
                          height: height * 0.3,
                          // TODO 17: Here you will have to paste the pic of the product from APIS
                          child: Image.asset(
                              "assets/samsung.jpg"),
                        ),
                        Text(
                          // TODO 18: Here you will have to paste the location of the client from APIS
                          "Location: San Francisco, CA",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: grey,
                              fontSize: 15.0),
                        ),
                        Text(
                          // TODO 19: Here you will have to paste the weather from APIS
                          "Weather: 70, Sunny",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: grey,
                              fontSize: 15.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // TODO 20: Here you will have to paste the function which will be called when decline button is pressed.
                          },
                          child: Image.asset(
                            "assets/cancel.png",
                            height: 60.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // TODO 21: Here you will have to paste the function which will be called when accept button is pressed. I have already navigated to the webview screen for call you just have to write function above navigator.push screen

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => LiveCallScreen()));
                          },
                          child: Image.asset(
                            "assets/checked.png",
                            height: 60.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: width * 1.0,
                height: height * 0.04,
                color: black,
                child: TopLogo(
                  width: width,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
