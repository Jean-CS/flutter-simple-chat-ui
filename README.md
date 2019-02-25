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

- [TextField](http://docs.flutter.io/flutter/material/TextField-class.html) - Specific to Material Design

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

- [Row](https://docs.flutter.io/flutter/widgets/Row-class.html)

A widget that displays its children in a horizontal array.

Since we want to display the button adjacent to the input field, we'll use a Row widget as the parent.

- [Flexible](https://docs.flutter.io/flutter/widgets/Flexible-class.html)

This tells the Row to automatically size the text field to use the remaining space that isn't used by the button.

A widget that controls how a child of a Row, Column, or Flex flexes.

Using a Flexible widget gives a child of a Row, Column, or Flex the flexibility to expand to fill the available space in the main axis (e.g., horizontally for a Row or vertically for a Column), but, unlike Expanded, Flexible does not require the child to fill the available space.

- [IconButton](http://docs.flutter.io/flutter/material/IconButton-class.html) - Specific to Material Design

A material design icon button.

An icon button is a picture printed on a Material widget that reacts to touches by filling with color (ink).

Icon buttons are commonly used in the AppBar.actions field, but they can be used in many other places as well.

If the onPressed callback is null, then the button will be disabled and will not react to touch.

Requires one of its ancestors to be a Material widget.

- [Icons](https://docs.flutter.io/flutter/material/Icons-class.html)

Identifiers for the supported material design icons.

Use with the Icon class to show specific icons.

- [Icon](https://docs.flutter.io/flutter/widgets/Icon-class.html)

A graphical icon widget drawn with a glyph from a font described in an IconData such as material's predefined IconDatas in Icons.

- IconTheme, IconeThemeData, ThemeData

Icons inherit their color, opacity, and size from an IconTheme widget, which uses an IconThemeData object to define these characteristics. Wrap all the widgets in the _buildTextComposer() method in an IconTheme widget, and use its data property to specify the ThemeData object of the current theme. This gives the button (and any other icons in this part of the widget tree) the accent color of the current theme.

- [CircleAvatar](https://docs.flutter.io/flutter/material/CircleAvatar-class.html)

A circle that represents a user.

Typically used with a user's profile image, or, in the absence of such an image, the user's initials. A given user's initials should always be paired with the same background color, for consistency.

- [CrossAxisAlignment enum](http://codelabs.developers.google.com/codelabs/flutter-firebase/)

How the children should be placed along the cross axis in a flex layout.

- [ListView](https://docs.flutter.io/flutter/widgets/ListView-class.html)

A scrollable list of widgets arranged linearly.

ListView is the most commonly used scrolling widget. It displays its children one after another in the scroll direction. In the cross axis, the children are required to fill the ListView.

- [ListView.builder](https://docs.flutter.io/flutter/widgets/ListView/ListView.builder.html)

We choose the ListView.builder constructor because the default constructor doesn't automatically detect mutations of its children argument.

Creates a scrollable, linear array of widgets that are created on demand.

This constructor is appropriate for list views with a large (or infinite) number of children because the builder is called only for those children that are actually visible.

- [Column](https://docs.flutter.io/flutter/widgets/Column-class.html)

A widget that displays its children in a vertical array.

To cause a child to expand to fill the available vertical space, wrap the child in an Expanded widget.

The Column widget does not scroll (and in general it is considered an error to have more children in a Column than will fit in the available room). If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView.

- [Divider](https://docs.flutter.io/flutter/material/Divider-class.html)

A one device pixel thick horizontal line, with padding on either side.

In the material design language, this represents a divider.

Dividers can be used in lists, Drawers, and elsewhere to separate content vertically or horizontally depending on the value of the axis enum. To create a one-pixel divider between items in a list, consider using ListTile.divideTiles, which is optimized for this case.

The box's total height is controlled by height. The appropriate padding is automatically computed from the width or height.

- [BoxDecoration](https://docs.flutter.io/flutter/painting/BoxDecoration-class.html)

An immutable description of how to paint a box.

The BoxDecoration class provides a variety of ways to draw a box.

The box has a border, a body, and may cast a boxShadow.

The shape of the box can be a circle or a rectangle. If it is a rectangle, then the borderRadius property controls the roundness of the corners.

The body of the box is painted in layers. The bottom-most layer is the color, which fills the box. Above that is the gradient, which also fills the box. Finally there is the image, the precise alignment of which is controlled by the DecorationImage class.

The border paints over the body; the boxShadow, naturally, paints below it.

- [AnimationController](http://docs.flutter.io/flutter/animation/AnimationController-class.html)

The AnimationController class lets you define important characteristics of the animation, such as its duration and playback direction (forward or reverse).

When creating an AnimationController, you must pass it a vsync argument. The vsync prevents animations that are offscreen from consuming unnecessary resources. To use your ChatScreenState as the vsync, include a TickerProviderStateMixin mixin in the ChatScreenState class definition.

- [TickerProviderStateMixin](https://docs.flutter.io/flutter/widgets/TickerProviderStateMixin-mixin.html)

> **Tip**: In Dart, a mixin allows a class body to be reused in multiple class hierarchies. For more information, see Classes, a section in the Dart Language Tour.

Provides [Ticker](https://docs.flutter.io/flutter/scheduler/Ticker-class.html) objects that are configured to only tick while the current tree is enabled, as defined by TickerMode.

To create an AnimationController in a class that uses this mixin, pass vsync: this to the animation controller constructor whenever you create a new animation controller.

If you only have a single Ticker (for example only a single AnimationController) for the lifetime of your State, then using a SingleTickerProviderStateMixin is more efficient. This is the common case.

---

## State

In Flutter, if you want to visually present stateful data in a widget, you should encapsulate this data in a State object. You can then associate your State object with a widget that extends the StatefulWidget class.

---

## Suggestions

- Get the user's name via Authentication, as shown in the [Firebase for Flutter](http://codelabs.developers.google.com/codelabs/flutter-firebase/) codelab
- Use the robofriends api for filling the CircleAvatar with an image
- Add a route for seeing a list of all your chats

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
