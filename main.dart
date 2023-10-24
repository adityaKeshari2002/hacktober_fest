import 'package:flutter/material.dart';
import 'app_body.dart';

void main() {
  const bgColor=Colors.deepPurpleAccent;

  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: AppBody(),
      ),
    ),
  ));
}
