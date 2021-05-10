import 'package:flutter/material.dart';
import 'package:saveboxfran/Screens/Login.dart';

import 'constraints.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '3D',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: PrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: TextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),

    );
  }
}