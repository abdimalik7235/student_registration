// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student_registrations/pages/SignUp.dart';
import 'package:student_registrations/utility/imagewidget.dart';
import 'package:student_registrations/utility/mytext.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //const LoginPage({super.key});
  TextEditingController email = TextEditingController();

  TextEditingController pss = TextEditingController();
  bool isloading = false;
  signin() async {
    try {
      isloading = true;
      setState(() {});
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email.text, password: pss.text);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => SignUp()),
          ));
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
            // image
            ImageWidget(
              ImageAsset: 'images/mylogin.png',
              ImageHeight: 250,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              child: Container(
                // color: Colors.amber,
                width: double.infinity,
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // login lable
                    const MyText(MylableText: 'Login', FontSize: 40),
                    SizedBox(
                      height: 30,
                    ),

                    // input username/password
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                          hintText: 'Email ID',
                          prefixIcon: Icon(Icons.alternate_email_outlined)),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: pss,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixText: 'Forget?',
                        suffixStyle: TextStyle(
                            color: Color.fromARGB(255, 26, 56, 247),
                            fontSize: 18),
                      ),
                    ),

                    // login button
                    SizedBox(
                      height: 30,
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: double.infinity,
                      height: 65,
                      child: ElevatedButton(
                          onPressed: () => signin(),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(227, 39, 94, 223),
                              elevation: 0,
                              shape: StadiumBorder()),
                          child: Text(
                            "login",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                    // registor now
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New User Please? ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => SignUp()),
                                ));
                          },
                          child: Text('Registor',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 28, 79, 248),
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
