import 'package:app_test/pages/home_page.dart';
import 'package:app_test/theme.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo da memoria',
      debugShowCheckedModeBanner: false,
      theme: Round6Theme.theme,
      home: const HomePage(),
    );
  }
}


