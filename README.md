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
