import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const CyberSecurityApp());
}

class CyberSecurityApp extends StatelessWidget {
  const CyberSecurityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AEP App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
