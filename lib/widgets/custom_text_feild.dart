import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/widgets/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(cursorColor: kprimarycolor,
      decoration: InputDecoration(hintText: 'title',
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
