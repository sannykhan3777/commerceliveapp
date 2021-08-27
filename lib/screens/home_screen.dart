import 'package:commerceliveapp/constants/constant_for_screens.dart';
import 'package:commerceliveapp/screens/call_screen.dart';
import 'package:commerceliveapp/screens/livecall_screen.dart';
import 'package:commerceliveapp/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  final _controller = AdvancedSwitchController();
  Color white = Colors.white;
  Color black = Colors.black;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: black,
        // title: Text("History" , style: TextStyle(color: Colors.black),),
        // leading: IconButton(
        //   tooltip: "Settings",
        //   icon: Icon(Icons.dehaze ,  size: 35.0, color: Colors.black, ),
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
        actions: [
          Builder(
              builder: (context) => Center(
                      child: Text(
                        // TODO 13: here you name will come from APIs.
                    "Hello, Sanny    ",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ))),
        ],
      ),
      drawer: Container(
        width: width * 0.6,
        child: SafeArea(
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor:
                  Colors.black, //This will change the drawer background to blue.
              //other styles
            ),
            child: Drawer(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_back_outlined,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    //drawer stuffs
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.1,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // TODO 3: here write the function you want to call when you want to enable notification.

                                },
                                child: Text(
                                  "Enable Notifications",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // TODO 4: here write the function you want to call when you want to test notification.
                                },
                                child: Container(
                                  child: Text(
                                    "Test Notifications",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.3,
                    ),

                    DrawerList(
                      iconName: Icons.view_headline,
                      // TODO 5: here your version name will come.
                      texxt: 'Version',
                      stylee: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                    GestureDetector(
                      onTap: () {
                        // TODO 6: here if you want to show your website for help you can call that function here.
                      },
                      child: DrawerList(
                        iconName: Icons.help,
                        texxt: 'Help',
                        stylee: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                      title: Text(
                        'Logout',
                        style: TextStyle(color: Colors.red, fontSize: 18.0),
                      ),
                      onTap: () async {
                        // TODO 7: here you will click on logout and it will signout you from the firebase and etc that code will be written here.


                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: height,
        width: width,
        color: white,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * 0.1,
                    ),
                    //////////////////////////
                    // TODO 14: This is just for navigating to call screen, actuall call will come from notifications and you have to call the call screen. That call screen will be shown when notification will come. On call screen you have the option to accept and decline the call if you accept it it will go to the live call screen. I have used webview and you will have to paste the live call url at that
                    ElevatedButton(onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CallScreen()));
                    }, child: Text("Call screen" , style: TextStyle(color: white),),),
                    ///////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ExpandedInsideContainer(
                          // TODO 8: here you write the accepted calls from APIs.
                          nmbrOfCalls: 25,
                          name: "Accepted Calls",
                          height: height,
                          width: width,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        ExpandedInsideContainer(
                          // TODO 9: here you write the missed calls from APIs.
                          nmbrOfCalls: 8,
                          name: "Missed Calls",
                          height: height,
                          width: width,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ExpandedInsideContainer(
                          // TODO 10: here you write the total call minutes.
                          nmbrOfCalls: 25,
                          name: "Call Minutes",
                          height: height,
                          width: width,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        ExpandedInsideContainer(
                          // TODO 11: here you write the certified from APIs.
                          nmbrOfCalls: 25,
                          name: "Certified Products",
                          height: height,
                          width: width,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Last 7 Days",
                          style: TextStyle(
                              color: black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.07,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width * 0.7,
                          height: height * 0.08,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Color(0xFF595959),
                              width: 1.0, // red as border color
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              AdvancedSwitch(
                                // TODO 12: here you write the logic that when it is enabled what to do with the APIs and what functions are called at backend.
                                controller: _controller,
                                activeColor: Colors.red,
                                inactiveColor: Colors.grey,
                                borderRadius:
                                BorderRadius.all(const Radius.circular(15)),
                                width: 50.0,
                                height: 30.0,
                                // enabled: true,
                                disabledOpacity: 0.5,
                              ),

                              Text(
                                "Available for Calls",
                                style: TextStyle(
                                    color: black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w400),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
    );
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({
    Key? key,
    required this.iconName,
    required this.texxt,
    required this.stylee,
  }) : super(key: key);

  final IconData iconName;
  final String texxt;
  final TextStyle stylee;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconName,
        color: Colors.white,
      ),
      title: Text(
        texxt,
        style: stylee,
      ),
      onTap: () {},
    );
  }
}

class ExpandedInsideContainer extends StatelessWidget {
  const ExpandedInsideContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.nmbrOfCalls,
    required this.name,
  }) : super(key: key);

  final double width;
  final double height;
  final int nmbrOfCalls;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: width * 0.35,
        height: height * 0.17,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$nmbrOfCalls",
              style: TextStyle(fontSize: 30.0, color: Colors.grey.shade800),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 15.0, color: Colors.grey.shade800),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Color(0xFFeeeeee),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: Color(0xFF595959),
            width: 2.0, // red as border color
          ),
        ),
      ),
    );
  }
}
