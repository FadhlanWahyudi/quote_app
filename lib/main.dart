import 'package:flutter/material.dart';
import 'package:quote_app/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black12,
          centerTitle: true,
          title: Text('Quote'),
        ) ,
      body: HomePage(),
        )
    );
  }
}
