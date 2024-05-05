import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/add_note.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/into_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
          AddNote.id :(context) => AddNote(),
          HomePage.id :(context) => HomePage(),
          IntroPage.id :(context) => IntroPage()
      },
    );
  }
}