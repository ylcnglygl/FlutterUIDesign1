import 'package:flutter/material.dart';

import 'language_page_home_text.dart';

class Languages extends StatefulWidget {
  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  LanguagePageHomeText languagePageHomeText = LanguagePageHomeText();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                languagePageHomeText.homeText,
                style: TextStyle(fontSize: 32, color: Colors.blue[900]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  cardWidget("assets/spain.png", "Spanish"),
                  cardWidget("assets/england.png", "English"),
                  cardWidget("assets/germany.png", "German"),
                  cardWidget("assets/korea.png", "Korean"),
                  cardWidget("assets/poland.png", "Polish"),
                  cardWidget("assets/italy.png", "Italian"),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  Card cardWidget(String image, String countryName) {
    return Card(
      elevation: 4,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('Card tapped.');
        },
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: 75,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(image),
              ),
              Text(
                countryName,
                style: TextStyle(fontSize: 32),
              ),
              Spacer(),
              Icon(Icons.ac_unit),
            ],
          ),
        ),
      ),
    );
  }
}
