import 'package:flutter/material.dart';
import 'package:hubb/Utils/colors.dart';
import 'package:hubb/Widgets/TextWIdget.dart';
import 'package:hubb/Widgets/Textfield.dart';

import 'SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                              (route) => false);
                    },
                    child: TextWidget(
                      rightPadding: 5,
                      topPadding: 5,
                      data: "SignUp",
                      size: 19,
                      color: purple_One,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          data: "HEY,",
                          size: width * 0.15,
                          color: purple_Two,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 75,
                          width: width * 0.75,
                          child: TextWidget(
                            data:
                                "looking for the best events in your community",
                            maxline: 2,
                            size: width * 0.04,
                          ),
                        ),
                        //
                        SizedBox(height: 20,),
                        //
                        Column(
                          spacing: 15,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextfieldWidget(hintText: "mobile/email",),
                            SizedBox(
                              width: width,
                              child: Row(
                                children: [
                                  TextfieldWidget(
                                    hintText: "password",
                                  ),
                                  SizedBox(
                                    width: width * 0.35,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: TextWidget(
                                          data: "forgot password?",
                                          size: 15,
                                          color: Colors.black54,
                                          maxline: 1,
                                          textOverflow: TextOverflow.ellipsis,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                              width: width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: width*0.12,
                                    width:width*0.35,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: TextWidget(
                                        data: "Login",
                                        color: Colors.white,
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: buttonColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                        )

                                      ),
                                    ),
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
