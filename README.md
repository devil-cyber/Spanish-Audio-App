# spanishaudio player app to learn spanish speaking
## This app provides a guided way how to get started with audio in android using flutter
## If you will click on the button it will spaek specific chracter in spanish
## The structure of app:
- It contains a main.dart file as entry point:
```dart
import 'package:flutter/material.dart';
import 'package:spanishaudio/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Spanish Audio App",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}

```
- A home_page.dart file that contains all the main function and the stateful widget
- And a number_audio.dart file act as a helper class
## The ui of app look like:
<img src='images\Screenshot_20201010_085446.jpg' width='300'/>
<img src='images\Screenshot_20201010_085501.jpg' width='500'/>

 

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
