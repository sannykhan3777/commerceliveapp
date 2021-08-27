import 'dart:async';
import 'dart:io';

import 'package:commerceliveapp/constants/constant_for_screens.dart';
import 'package:commerceliveapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LiveCallScreen extends StatefulWidget {
  const LiveCallScreen({Key? key}) : super(key: key);

  @override
  _LiveCallScreenState createState() => _LiveCallScreenState();
}

class _LiveCallScreenState extends State<LiveCallScreen> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  String urll = "https://commerce.live/terms.html";

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: black,
      //   title: Text("History" , style: TextStyle(color: Colors.black),),
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_outlined,
      //       color: Colors.white,
      //       size: 30.0,
      //     ),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //
      // ),
      body: Container(
        width: width,
        height: height,
        color: black,
        child: SafeArea(
          child: Stack(
            children: [
              WebView(
                // TODO 23: Here you will have to paste the url of the webview and the live call screen will be opened with the client. For now I have just psted the url of your website.
                initialUrl: urll,
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
              ),
              Positioned(
                top: 10.0,
                right: 20.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(red),
                  ),
                  child: Text("Leave"),
                  onPressed: () {
                    // TODO 22: Here you will have to paste the function when the call leaves. When this button is pressed firstly your function will be called and after that I have used Navigator.push so it will go to the home screen

                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                        HomeScreen()), (Route<dynamic> route) => false);
                  },
                ),
              ),
              Positioned(
                bottom: 0.0,

                child: Container(
                  height: height * 0.4,
                  width: width,
                  color: Colors.black.withOpacity(0.5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: width * 0.3,
                            height: height * 0.18,
                            child: Image.asset("assets/samsung.jpg" ,),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sony Bravio XR OLED" , style: TextStyle(color: white , fontSize: 20.0),),
                                Text("Price \$450, 20% discount" , style: TextStyle(color: white),),
                                Text("Product Page : bestbuy.com/tv/sony" , style: TextStyle(color: white),),
                                Text("X sale: SoundBar, Wall mart" , style: TextStyle(color: white),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: width * 0.9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Source : BestBuy.com" , style: TextStyle(color: white),),
                                Text("Visited Products: Xbox 360 , HDMI cable" , style: TextStyle(color: white),),
                                Text("Location: San-Francisco, CA" , style: TextStyle(color: white),),
                                Text("Weather: 70, Sunny" , style: TextStyle(color: white),),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
