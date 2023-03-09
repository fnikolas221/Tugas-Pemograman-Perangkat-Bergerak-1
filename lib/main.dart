import 'package:flutter/material.dart';
import 'package:latihan1/ListMataKuliah.dart';
import 'package:latihan1/Quotes.dart';
import 'package:latihan1/home.dart';
import 'package:latihan1/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Login(),
    );
  }
}
