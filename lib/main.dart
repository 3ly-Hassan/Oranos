import 'package:flutter/material.dart';
import 'package:oranos_experts/screens/getStart/get_start.dart';
import 'package:oranos_experts/screens/start/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oranos',
      home: Start(),
    );
  }
}
