import 'package:flutter/material.dart';

import '../Utils/colors.dart';
class TextfieldWidget extends StatelessWidget {
  final TextEditingController? textEditingController;
 final String? hintText;
 const TextfieldWidget({this.textEditingController,this.hintText,super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  SizedBox(
      height: width * 0.15,
      width: width * 0.60,
      child: TextField(
        controller:textEditingController,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
            ),
            hintText: hintText??" ",

            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.black54

            ),
            filled: true,
            fillColor: textField_Color,
            contentPadding: EdgeInsets.symmetric(horizontal: 10)),

        textAlignVertical: TextAlignVertical.center,
        expands: true,
        maxLines: null,
        minLines: null,
      ),
    );
  }
}
