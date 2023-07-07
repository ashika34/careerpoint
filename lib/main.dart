import 'package:careerpoint/aboutus.dart';
import 'package:careerpoint/contactus.dart';
import 'package:careerpoint/employers.dart';
import 'package:careerpoint/faq.dart';
import 'package:careerpoint/firstscreen.dart';
import 'package:careerpoint/homepage.dart';
import 'package:careerpoint/login_page.dart';
import 'package:careerpoint/searchjobs.dart';
import 'package:careerpoint/sign_up.dart';
import 'package:careerpoint/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.purple
      ),
      home:SplashScreen()
    );
  }
}

