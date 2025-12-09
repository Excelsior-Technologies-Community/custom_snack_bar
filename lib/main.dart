import 'package:flutter/material.dart';
import 'package:snackbar_custom/custom_snackbar/demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Demo(),
    );
  }
}

