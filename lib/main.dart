import 'package:flutter/material.dart';
import 'package:flutter_animetions/full/ani_container_obcite/container_obsite.dart';
import 'package:flutter_animetions/full/ani_container_obcite/animation_jip.dart/jip_tartuu.dart';
import 'package:flutter_animetions/full/animvideo.dart';
import 'package:flutter_animetions/full/home_view.dart';

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
      // home: const HomeView(),
      // home: const PhysicsCardDragDemo(),
      home: const Animvideo(),
    );
  }
}


// ? AnimatedContainer
// ? AnimatedOpacity
// ? TweenAnimationBuilder, Curves
// ? Hero
// ? AnimationController, ColorTween, AnimatedBuilder, TweenSequence, 