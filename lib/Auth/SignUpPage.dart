import 'package:flutter/material.dart';
import 'package:hubb/Auth/LoginPage.dart';
import 'package:hubb/Services/Functions/firebaseFunctions.dart';
import 'package:hubb/Utils/colors.dart';
import 'package:hubb/Widgets/TextWIdget.dart';
import 'package:hubb/Widgets/Textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  FirebaseFunctions firebaseFunctions = FirebaseFunctions();

  //Controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (ctx) => LoginPage()),
                            (route) => false);
                  },
                  child: TextWidget(
                    rightPadding: 5,
                    topPadding: 5,
                    data: "SignIn",
                    size: 19,
                    color: purple_One,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: height * 0.10,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              data: "Welcome",
                              size: 45,
                              color: purple_Two,
                              fontWeight: FontWeight.w300,
                            ),

                            TextWidget(data: "Onboard", size: 26,),
                            SizedBox(
                              height: 30,
                              width: width * 0.75,
                              child: TextWidget(
                                data:
                                "find the best events in your community",
                                maxline: 2,
                                size: width * 0.04,
                              ),
                            ),
                          ],
                        ),
                        //
                        SizedBox(height: 30,),
                        //
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                spacing: 20,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextfieldWidget(
                                    hintText: "username",
                                  ),
                                  TextfieldWidget(
                                    hintText: "mobile/email",
                                    textEditingController: emailController,
                                  ),
                                  TextfieldWidget(
                                    hintText: "password",
                                    textEditingController: passwordController,
                                  ),

                                  TextfieldWidget(
                                    hintText: "confirm password",
                                    textEditingController: confirmPassController,
                                  ),


                                  SizedBox(
                                      width: width,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .end,
                                        children: [
                                          SizedBox(
                                            height: width * 0.12,
                                            width: width * 0.35,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 30),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  firebaseFunctions
                                                      .registerUser(
                                                      emailController.text
                                                          .trim(), passwordController.text.trim());
                                                },
                                                child: TextWidget(
                                                  data: "SignUp",
                                                  color: Colors.white,
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: buttonColor,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            15))),
                                              ),
                                            ),
                                          )
                                        ],
                                      ))


                                ],
                              ),
                            ),
                          ],
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
