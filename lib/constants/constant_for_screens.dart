import 'package:flutter/material.dart';
const Color black = Colors.black;
const Color grey = Colors.grey;
const Color red = Colors.red;
const Color white = Colors.white;

class TopLogo extends StatelessWidget {
  const TopLogo({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "COMMERCE",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
        SizedBox(
          width: width * 0.01,
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 8.0,
        ),
        SizedBox(
          width: width * 0.01,
        ),
        Text(
          "LIVE",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ],
    );
  }
}
