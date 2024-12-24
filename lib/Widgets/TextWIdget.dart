import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String? data;
  final double? size;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final Color? color;
  final double? leftPadding;
  final double? rightPadding;
  final double? topPadding;
  final double? bottomPadding;
  final TextOverflow? textOverflow;
  final int? maxline;
  TextWidget(
      { this.color,
        this.fontStyle,
        this.data,
        this.size,
        this.fontWeight,
        this.leftPadding,
        this.rightPadding,
        this.topPadding,
        this.bottomPadding,
        this.textOverflow,
        this.maxline,
        super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:leftPadding??0,right: rightPadding??0,top: topPadding??0,bottom: bottomPadding??0 ),
      child: AutoSizeText(
           data??" ",
          minFontSize: 14,
          maxFontSize: 48,
          maxLines: maxline,
          overflow: textOverflow,
          textAlign: TextAlign.left,
          style: GoogleFonts.alef(
            fontWeight: fontWeight,
            fontSize: size ?? 15,
            fontStyle: fontStyle,
            color: color,
          ),

      )
      );
  }
}
