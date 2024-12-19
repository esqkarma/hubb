import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hubb/Auth/LoginPage.dart';

import 'firebase_options.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    );
  }
}
