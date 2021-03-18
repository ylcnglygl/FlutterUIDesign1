import 'package:catinder/pages/home/home_text.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  HomeText homeText = HomeText();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/home.png"),
            ),
            Text(homeText.home,
                style: TextStyle(color: Colors.black, fontSize: 38)),
            Text(homeText.home2,
                style: TextStyle(color: Colors.black, fontSize: 38)),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(child: signInElevatedButton()),
              ],
            ),
            Row(
              children: [
                Expanded(child: createAnAccountElevatedButton()),
              ],
            ),
          ],
        ),
      )),
    );
  }

  ElevatedButton createAnAccountElevatedButton() {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red[400]),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ))),
        onPressed: () {},
        child: Text("Create An Account"));
  }

  ElevatedButton signInElevatedButton() {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ))),
        onPressed: () {},
        child: Text(
          "Sign In",
          style: TextStyle(color: Colors.grey),
        ));
  }
}
