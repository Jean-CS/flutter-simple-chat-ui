import 'package:flutter/material.dart';

void main() {
  runApp(
    // This is the root of your Widget tree.
    // Everything will inherit material-design specific functionality and style
    MaterialApp(
      title: "Chat UI",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Chat UI"),
        ),
      ),
    ),
  );
}
