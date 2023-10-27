import 'package:flutter/material.dart';
import 'package:flutter_animetions/ani_container_obcite/container_obsite.dart';
import 'package:flutter_animetions/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}


// ? AnimatedContainer
// ? AnimatedOpacity
// ? TweenAnimationBuilder, Curves
// ? Hero
// ? AnimationController, ColorTween, AnimatedBuilder, TweenSequence, 