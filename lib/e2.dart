import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: Container(
      color: Colors.blue,
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.all(40),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.red,
          ),
          child: const Center(
            child: Text(
              'CADT STUDENTS',
              style: TextStyle(fontSize: 50,color: Colors.white),
            ),
          ),
        )),
  )));
}
