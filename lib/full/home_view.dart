import 'package:flutter/material.dart';
import 'package:flutter_animetions/full/ani_container_obcite/container_obsite.dart';
import 'package:flutter_animetions/full/animetion_controler/ani_controler.dart';
import 'package:flutter_animetions/full/curves/test.dart';
import 'package:flutter_animetions/full/hero/heroanimation.dart';
import 'package:flutter_animetions/full/sun/sun.dart';
import 'package:flutter_animetions/full/tweenanimation/tween_animashin.dart';

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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Test1()));
                },
                child: const Text(
                  "Test1",
                  style: TextStyle(fontSize: 20),
                )),
            const SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Sun()));
                },
                child: const Text(
                  "Sun",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
