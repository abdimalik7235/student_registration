import 'package:flutter/material.dart';
import 'package:student_registrations/utility/mytext.dart';

class nstudent extends StatefulWidget {
  nstudent({super.key});

  @override
  State<nstudent> createState() => _nstudentState();
}

class _nstudentState extends State<nstudent> {
  TextEditingController fname = TextEditingController();
  TextEditingController mname = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController adress = TextEditingController();
  TextEditingController tell = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("New Student Registration"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              child: Container(
                width: double.infinity,
                // height: 1000,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(MylableText: "create new Student", FontSize: 20),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: fname,
                      decoration: InputDecoration(
                        hintText: "full_name",
                        prefixIcon: Icon(Icons.alternate_email_outlined),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "mother_name",
                        prefixIcon: Icon(Icons.alternate_email_outlined),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Age",
                        prefixIcon: Icon(Icons.alternate_email_outlined),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    TextField(
                      decoration: InputDecoration(
                        hintText: "adress",
                        prefixIcon: Icon(Icons.alternate_email_outlined),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "tellphone",
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
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(227, 39, 94, 223),
                              elevation: 0,
                              shape: StadiumBorder()),
                          child: Text(
                            "Save",
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
            ),
          ],
        ),
      ),
    );
  }
}
