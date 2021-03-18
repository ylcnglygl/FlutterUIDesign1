import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'pages/createAccount/create_account.dart';
import 'pages/home/welcome.dart';
import 'pages/languagePage/languages.dart';
import 'widgets/border_text_field.dart';
import 'widgets/user_menu_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createAccount(),
      debugShowCheckedModeBanner: false,
    );
  }
}
