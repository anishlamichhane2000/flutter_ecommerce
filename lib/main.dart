import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/feature/home/ui/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Home(),
    );
  }
}
