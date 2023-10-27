import 'package:flutter/material.dart';
import 'package:flutter_animetions/ani_container_obcite/container_obsite.dart';
import 'package:flutter_animetions/animetion_controler/ani_controler.dart';
import 'package:flutter_animetions/hero/heroanimation.dart';
import 'package:flutter_animetions/tweenanimation/tween_animashin.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContainerObsite()));
                },
                child: const Text(
                  "AnimatedContainer & AnimatedOpacity",
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TweenAnimashin()));
                },
                child: const Text(
                  "TweenAnimationBuilder",
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Birinchi()));
                },
                child: const Text(
                  "Hero",
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AniControler()));
                },
                child: const Text(
                  "AnimationController",
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AniControler()));
                },
                child: const Text(
                  "Curves",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
