import 'package:flutter/material.dart';

Widget mSpacer({double mHeight = 15.0, double mWidth = 15.0}) {
  return SizedBox(
    height: mHeight,
    width: mWidth,
  );
}
bool? validatePassword(String value) {
  RegExp regex =
  RegExp(r'^(?=.*\d)(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\W).{8,}$');
  String _password = value.trim();
  if (regex.hasMatch(_password)) {
    return true;
  } else {
    return false;
  }
}
bool isEmailValid({required String email}){
  final bool emailValid =
  RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  return emailValid;
}