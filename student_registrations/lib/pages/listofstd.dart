

import 'package:flutter/material.dart';



class listof extends StatefulWidget {
  @override
  State<listof> createState() => _SignUpState();
}

class _SignUpState extends State<listof> {
  // const SignUp({super.key});
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Expanded(
                  child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fname :",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mname",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Age ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Addr ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "tell",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          height: 65,
                          child: ElevatedButton(
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  elevation: 0,
                                  shape: StadiumBorder()),
                              child: Text(
                                "Edit",
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          height: 65,
                          child: ElevatedButton(
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  elevation: 0,
                                  shape: StadiumBorder()),
                              child: Text(
                                "delte",
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
