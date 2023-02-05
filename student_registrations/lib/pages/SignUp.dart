import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:student_registrations/utility/imagewidget.dart';
import 'package:student_registrations/utility/mytext.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // const SignUp({super.key});
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  final auth = Firebase.initializeApp();
  bool isloading = false;

  reg() async {
    try {
      isloading = true;
      setState(() {});
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
      print("succes");
    } catch (e) {
      log(e.toString());
    }

    isloading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          ImageWidget(
            ImageAsset: 'images/signup.png',
            ImageHeight: 250,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
            child: Container(
              width: double.infinity,
              height: 450,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyText(
                    MylableText: 'Sign Up',
                    FontSize: 35,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: "email",
                      prefixIcon: Icon(Icons.alternate_email_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.alternate_email_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    height: 65,
                    child: ElevatedButton(
                        onPressed: () => {reg()},
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(227, 39, 94, 223),
                            elevation: 0,
                            shape: StadiumBorder()),
                        child: isloading
                            ? CircularProgressIndicator(
                                backgroundColor: Colors.white,
                              )
                            : Text(
                                "Register",
                                style: TextStyle(fontSize: 20),
                              )),
                  )

                  // GestureDetector(
                  //   onTap: () {},
                  // ),
                  // MyButton(
                  //   btnText: 'Sign Up',
                  // ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
