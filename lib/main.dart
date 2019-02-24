import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
  // This is the root of your Widget tree.
  // Everything will inherit material-design specific functionality and style
}

// Root-level widget that never changes
class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat UI",
      home: ChatScreen(),
    );
  }
}

// Widget that can rebuild when messages
// are sent and internal state changes.
// Later we'll modify it to extend StatefulWidget and manage state
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat UI"),
      ),
    );
  }
}
