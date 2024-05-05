import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';

class IntroPage extends StatefulWidget {
  static const String id = "/intro_page";
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.pushReplacementNamed(context, HomePage.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Color(0xfffB3B7EE),
      body: Center(child: Text('Welcome', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
    );
  }
}