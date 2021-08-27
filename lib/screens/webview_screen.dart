import 'dart:async';
import 'dart:io';
import 'package:commerceliveapp/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webView extends StatefulWidget {
  const webView({Key? key, required this.url }) : super(key: key);
  final String url;

  @override
  _webViewState createState() => _webViewState();
}

class _webViewState extends State<webView> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  late String urll;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    urll = widget.url;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text( "Terms of Services" , style: TextStyle(color: Colors.black),),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (context) => SignInScreen()),
                    (Route<dynamic> route) => false);
          },
          icon: Icon(Icons.arrow_back_outlined , color: Colors.black,),
        ),
      ),
      body: SafeArea(
          child: WebView(
            initialUrl: urll,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
            },
          )),
    );
  }
}
