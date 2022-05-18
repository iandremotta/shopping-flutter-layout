import 'package:Shopping/pages/cart.page.dart';
import 'package:Shopping/pages/login.page.dart';
import 'package:Shopping/pages/tabs.page.dart';
import 'package:Shopping/themes/dark.theme.dart';
import 'package:Shopping/themes/light.theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
