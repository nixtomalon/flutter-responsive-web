import 'package:flutter/material.dart';

const kTextStyle =
    TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black);

const kTextFieldDecoration = InputDecoration(
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 2),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 2),
  ),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  fillColor: Colors.transparent,
  //labelStyle: TextStyle(fontSize: 16.0),
  //contentPadding: EdgeInsets.all(10),
  filled: true,
);
