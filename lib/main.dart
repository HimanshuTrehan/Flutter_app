import 'package:first_app/Login_user.dart';
import 'package:flutter/material.dart';
import 'package:first_app/Login_user.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: Login_user(),
    );

}
}
