import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class UserMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/profile.png"),
            radius: 25.0,
            backgroundColor: Colors.transparent,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "Hi,\n",
              style: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(152, 156, 173, 1),
              ),
            ),
            TextSpan(
              text: "AAA BBB",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
          ])),
          Spacer(),
          IconButton(
            icon: Icon(
              FlutterIcons.bell_fea,
              color: Colors.blue.shade300,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
