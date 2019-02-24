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
class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat UI"),
      ),
      body: _buildTextComposer(),
    );
  }

  // The _buildTextComposer method returns a widget that
  // encapsulates the text input field.
  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        // To have control over the contents of the text field,
        // we'll provide the TextField constructor with a TextEditingController.
        // This controller can also be used to clear the field or read its value.
        controller: _textController,
        // To be notified when the user submits a message,
        // use the onSubmitted argument to provide a private
        // callback method _handleSubmitted().
        onSubmitted: _handleSubmitted,
        decoration: InputDecoration.collapsed(hintText: "Send a message"),
      ),
    );
  }

  // For now, this method will just clear the field, and later on we'll add more
  // to code to send the message.
  void _handleSubmitted(String text) {
    _textController.clear();
  }
}
