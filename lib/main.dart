import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Homework #1',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Nunito'),
        home: const LoginPage());
  }
}
