import 'package:flutter/material.dart';
import "package:my_flash/my_home_page.dart";
import "package:my_flash/my_flashlight.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flashlight',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyFlashlight(),
    );
  }
}
