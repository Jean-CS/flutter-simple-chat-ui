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
    return IconTheme(
      /*
      * A BuildContext object is a handle to the location of a widget in your app's widget tree. 
      * Each widget has its own BuildContext, which becomes the parent of the widget returned by 
      * the StatelessWidget.build or State.build function. 
      * This means the _buildTextComposer() method can access the BuildContext object from its 
      * encapsulating State object; you don't need to pass the context to the method explicitly.
      */
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            // This tells the Row to automatically size the text field to use
            // the remaining space that isn't used by the button.
            Flexible(
              child: TextField(
                // To have control over the contents of the text field,
                // we'll provide the TextField constructor with a TextEditingController.
                // This controller can also be used to clear the field or read its value.
                controller: _textController,
                // To be notified when the user submits a message,
                // use the onSubmitted argument to provide a private
                // callback method _handleSubmitted().
                onSubmitted: _handleSubmitted,
                decoration:
                    InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            )
          ],
        ),
      ),
    );
  }

  // For now, this method will just clear the field, and later on we'll add more
  // to code to send the message.
  void _handleSubmitted(String text) {
    _textController.clear();
  }
}
