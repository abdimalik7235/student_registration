import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String HintText;
  final String controlname;

  final Icon PrefixIcon;

  MyTextField({
    super.key,
    required this.HintText,
    required this.PrefixIcon,
    required this.controlname,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return TextField(
      // controller: name ,
      decoration: InputDecoration(
        hintText: HintText,
        prefixIcon: PrefixIcon,
      ),
    );
  }
}
