import 'package:big_bash_league/screens/histoy_screen.dart';
import 'package:big_bash_league/screens/homeScreen.dart';
import 'package:big_bash_league/screens/schedule_screen.dart';
import 'package:big_bash_league/screens/teams_screen.dart';
import 'package:big_bash_league/screens/veneus_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

