import 'package:catinder/widgets/border_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

Scaffold createAccount() {
  return Scaffold(
    backgroundColor: Colors.grey[200],
    body: SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [paddingFirstText(), socialButtons(), textFieldList()],
          ),
        ),
      ),
    ),
  );
}

Padding textFieldList() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BorderTextField(
              hintText: "First Name",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BorderTextField(
              hintText: "Last Name",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BorderTextField(
              hintText: "Your Email",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BorderTextField(
              hintText: "Password",
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Sign Up"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red[400]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ))),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Row socialButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      elevatedButtonFacebook(),
      elevatedButtonGmail(),
      elevatedButtonTwitter(),
    ],
  );
}

Padding paddingFirstText() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Text(
      "Create Your Free Account",
      style: TextStyle(fontSize: 35),
    ),
  );
}

ElevatedButton elevatedButtonTwitter() {
  return ElevatedButton(
    style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ))),
    onPressed: () {},
    child: Row(
      children: [
        Icon(FlutterIcons.twitter_mco),
        Text("Twitter"),
      ],
    ),
  );
}

ElevatedButton elevatedButtonGmail() {
  return ElevatedButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ))),
    onPressed: () {},
    child: Row(
      children: [
        Icon(FlutterIcons.google_ant),
        Text("Gmail"),
      ],
    ),
  );
}

ElevatedButton elevatedButtonFacebook() {
  return ElevatedButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[800]),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ))),
    onPressed: () {},
    child: Row(
      children: [
        Icon(FlutterIcons.facebook_mco),
        Text("Facebook"),
      ],
    ),
  );
}
