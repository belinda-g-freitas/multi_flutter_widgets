import 'package:flutter/material.dart';
import 'package:multi_flutter_widgets/parallax/parallax_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter multi widgets',
      // showPerformanceOverlay: true,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple).copyWith(scaffoldBackgroundColor: const Color.fromRGBO(18, 32, 47, 1)),
      home: ParallaxExample(),
    );
  }
}
