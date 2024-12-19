import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: AnimatedTextKit(
        animatedTexts: [
          FlickerAnimatedText("HuBB",textStyle: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.purple
          ))
        ], 
          repeatForever: true, // Keeps the animation running
                                ),
      )
                            );
  }
}
