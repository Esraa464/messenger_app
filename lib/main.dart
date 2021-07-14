import 'package:flutter/material.dart';
import 'messenger_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Messenger App',
      debugShowCheckedModeBanner: false,
      home: MessangerScreen (),
    );
    }
}