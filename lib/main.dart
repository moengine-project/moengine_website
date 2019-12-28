import 'package:flutter/material.dart';
import 'package:moengine_website/page/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'moengine',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        HomePage.routerName: (_) => HomePage(),
      },
    );
  }
}
