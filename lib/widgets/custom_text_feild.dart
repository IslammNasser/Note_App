import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/widgets/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key,  this.Maxline=1, required this.hint});
final int Maxline;
final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(maxLines:Maxline ,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        hintText:hint ,
        hintStyle: TextStyle(color: kprimarycolor),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(kprimarycolor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
