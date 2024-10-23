import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(CyberSecurityApp());
}

class CyberSecurityApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AEP App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
