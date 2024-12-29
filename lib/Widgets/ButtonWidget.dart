import 'package:flutter/material.dart';
import 'package:hubb/Utils/colors.dart';

class Buttonwidget extends StatelessWidget {
  final double? height;
  final double? width;
  const Buttonwidget({
    this.height,
    this.width,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
        decoration: BoxDecoration(
          color: buttonColor
        ),

    );
  }
}
