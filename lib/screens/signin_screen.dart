import 'package:commerceliveapp/constants/constant_for_screens.dart';
import 'package:commerceliveapp/screens/home_screen.dart';
import 'package:commerceliveapp/screens/webview_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  bool obscure_text = true;
  Icon iconfirst = Icon(
    Icons.visibility_off,
    color: Colors.grey.shade300,
  );
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            color: black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                TopLogo(width: width),
                SizedBox(
                  height: height * 0.15,
                ),
                Text("WELCOME" , style: TextStyle(color: Colors.white , fontSize: 35.0 , fontWeight: FontWeight.w400),),
                SizedBox(
                  height: height * 0.08,
                ),
                EmailField(red: red, emailController: _emailController, grey: grey),
                SizedBox(
                  height: height * 0.03,
                ),
                PasswordField(passController: _passController, obscure_text: obscure_text, iconfirst: iconfirst, grey: grey , red: red , onIconTap: () {
                    setState(() {
                      if (obscure_text == true) {
                        obscure_text = false;
                        iconfirst = Icon(
                          Icons.visibility,
                          color: Colors.red,
                        );
                      } else {
                        obscure_text = true;
                        iconfirst = Icon(
                          Icons.visibility_off,
                          color: grey,
                        );
                      }
                    });
                },),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forget your password?",
                      style: TextStyle(fontSize: 14.0, color: grey),
                    ),
                    SizedBox(
                      width: width * 0.4,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 14.0, color: grey),
                    ),

                  ],
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  // onTap: () async {
                  //   setState(() {
                  //     showSpinner = true;
                  //   });
                  //   try {
                  //     UserCredential _userCredential = await _auth
                  //         .createUserWithEmailAndPassword(
                  //         email: _emailController.text.trim(), password: _passController.text);
                  //     print(_userCredential.user.email);
                  //
                  //     if (_userCredential != null) {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) =>
                  //                   MenuScreen()));
                  //       setState(() {
                  //         showSpinner = false;
                  //       });
                  //     }
                  //
                  //
                  //   } catch (e) {
                  //     setState(() {
                  //       showSpinner = false;
                  //     });
                  //     final snackBar = SnackBar(content: Text(e.toString()),);
                  //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  //
                  //   }
                  // },
                  child: GestureDetector(
                    onTap: () {
                      // TODO 1: here write the function you want to call when Login button is pressed.


                      // After calling function the below line will navigate to the homepage screen. if the user is authentivated and is registered on your website
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      width: width * 0.6,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                            "Log in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  child: Text(
                    "OR",
                    style: TextStyle(color: Colors.white , fontWeight: FontWeight.w400 , fontSize: 15.0),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    // TODO 2: here write the function you want to call when user clicks on sign in with google.


                    // After calling function the below line will navigate to the homepage screen. if the user is authentivated and is registered on your website
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    width: width * 0.6,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/google.png",
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.09,
                ),
                // SizedBox(
                //   height: height * 0.3,
                // ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "By continuing, you are indicating that you accept our",
                            style: TextStyle(fontSize: 12.0, color: grey),
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => webView(url: 'https://commerce.live/terms.html',)));
                            },
                            child: Text(
                              "Terms of Service",
                              style: TextStyle(fontSize: 12.0, color: Colors.blue),
                            ),
                          ),
                          Text(
                            " and ",
                            style: TextStyle(fontSize: 12.0, color: grey),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => webView(url: ' https://commerce.live/privacy.html',)));
                            },
                            child: Text(
                              "Privacy Policy",
                              style: TextStyle(fontSize: 12.0, color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    required TextEditingController passController,
    required this.obscure_text,
    required this.iconfirst,
    required this.grey,
    required this.red,
    required this.onIconTap,
  }) : _passController = passController, super(key: key);

  final TextEditingController _passController;
  final bool obscure_text;
  final Icon iconfirst;
  final Color grey;
  final Color red;
  final Function onIconTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(
          vertical: 0.0, horizontal: 20.0),
      child: TextFormField(
        cursorColor: red,
        controller: _passController,
        obscureText: obscure_text,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.lock,
            color: red,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              onIconTap();
            },
            child: iconfirst,
          ),
          hintText: "Password",
          hintStyle: TextStyle(
            color: grey,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    Key? key,
    required this.red,
    required TextEditingController emailController,
    required this.grey,
  }) : _emailController = emailController, super(key: key);

  final Color red;
  final TextEditingController _emailController;
  final Color grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(
          vertical: 0.0, horizontal: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        cursorColor: red,
        controller: _emailController,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.email,
            color: red,
          ),
          hintText: "Email",
          hintStyle: TextStyle(
            color: grey,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}

