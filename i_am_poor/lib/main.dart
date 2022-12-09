import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image(
            image: AssetImage("images/a.png"),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("I Am Poor"),
        ),
      ),
    ),
  );
}
