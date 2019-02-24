# Simple Chat UI

## Widgets Used

> Widgets from different libraries in the Flutter framework are compatible and can work together in a single app.

- [MaterialApp](http://docs.flutter.io/flutter/material/MaterialApp/MaterialApp.html)

This Widget is the skeleton for Widgets that use Material Design. It adds material-design specific functionality, such as [AnimatedTheme](https://docs.flutter.io/flutter/material/AnimatedTheme-class.html) and [GridPaper](https://docs.flutter.io/flutter/widgets/GridPaper-class.html).

It builds upon the WidgetsApp class.

> A convenience class that wraps a number of widgets that are commonly required for an application. One of the primary roles that WidgetsApp provides is binding the system back button to popping the Navigator or quitting the application.

In this class, you need to provide a `home` parameter. Which is basically, your default route and what it shows.
So if you have:

```dart
[...]
    home: Scaffold(
        appBar: AppBar(
            title: Text("Chat UI"),
        ),
    ),
[...]
```

Your home screen will show an AppBar with the Text of "Chat UI".

- [Scaffold](https://docs.flutter.io/flutter/material/Scaffold-class.html) - Specific to Material Design apps

The Scaffold Widget implements the basic material design visual layout structure. It provides APIs for showing drawers, snack bars, and bottom sheets.

**Drawer**

![](http://i63.tinypic.com/30u7kt1.png)

**Snack Bar**

![](http://i64.tinypic.com/264588w.png)

**Bottom Sheet**

![](http://i64.tinypic.com/29kqc86.png)

- [AppBar](http://docs.flutter.io/flutter/material/AppBar/AppBar.html) - Specific to Material Design apps

This Widget creates a material design app bar. It is used to show a static title for the app.

It is typically used in the Scaffold.appBar property.

![](http://i63.tinypic.com/2lo25vn.png)

- [Text](https://docs.flutter.io/flutter/widgets/Text-class.html) - Generic

The Text widget displays a string of text with single style.

- [TextField](http://docs.flutter.io/flutter/material/TextField-class.html)

A material design text field.

On a device, clicking on the text field brings up a soft keyboard. Users can send chat messages by typing a non-empty string and pressing the Return key on the soft keyboard.

To manage interactions with the text field, it's helpful to use a [TextEditingController](https://docs.flutter.io/flutter/widgets/TextEditingController-class.html) object. You'll use it for reading the contents of the input field, and for clearing the field after the text message is sent.

- [TextEditingController](https://docs.flutter.io/flutter/widgets/TextEditingController-class.html)

A controller for an editable text field.

Whenever the user modifies a text field with an associated TextEditingController, the text field updates value and the controller notifies its listeners. Listeners can then read the text and selection properties to learn what the user has typed or how the selection has been updated.

Similarly, if you modify the text or selection properties, the text field will be notified and will update itself appropriately.

A TextEditingController can also be used to provide an initial value for a text field. If you build a text field with a controller that already has text, the text field will use that text as its initial value.

- [Container](https://docs.flutter.io/flutter/widgets/Container-class.html)

A convenience widget that combines common painting, positioning, and sizing widgets.

A container first surrounds the child with padding (inflated by any borders present in the decoration) and then applies additional constraints to the padded extent (incorporating the width and height as constraints, if either is non-null). The container is then surrounded by additional empty space described from the margin.

- [EdgeInsets](https://docs.flutter.io/flutter/painting/EdgeInsets-class.html)

An immutable set of offsets in each of the four cardinal directions.

Typically used for an offset from each of the four sides of a box. For example, the padding inside a box can be represented using this class.

The EdgeInsets class specifies offsets in terms of visual edges, left, top, right, and bottom.

- InputDecoration

- [Row]

- [IconButton]

---

## State

In Flutter, if you want to visually present stateful data in a widget, you should encapsulate this data in a State object. You can then associate your State object with a widget that extends the StatefulWidget class.

---

Project from [Google Code Labs](https://codelabs.developers.google.com/codelabs/flutter/#3)

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.io/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
