import 'package:flutter/material.dart';
import 'package:gym/introbage.dart';

void main() {
  runApp(const Gym());
}

class Gym extends StatelessWidget {
  const Gym({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
