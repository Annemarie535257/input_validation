import 'package:flutter/material.dart';
import 'screens/form_screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi-Form App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormScreen1(), // Starting with the first form screen
    );
  }
}
