import 'package:flutter/material.dart';
import 'package:perfume_design2/perfume.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PerfumeDesign(),
      debugShowCheckedModeBanner: false,
    );
  }
}