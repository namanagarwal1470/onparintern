import 'package:flutter/material.dart';
import 'package:onparintern/screen1.dart';
import 'package:onparintern/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: screen2());
  }
}
