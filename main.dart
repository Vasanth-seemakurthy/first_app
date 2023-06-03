import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';
void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 40, 8, 94),Color.fromARGB(235, 22, 3, 80))
      ),
    ),
  );
}
