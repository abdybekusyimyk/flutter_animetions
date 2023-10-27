import 'package:flutter/material.dart';

class Sun extends StatefulWidget {
  const Sun({Key? key}) : super(key: key);

  @override
  _SunState createState() => _SunState();
}

class _SunState extends State<Sun> {
  double slider = 0;
  Color newColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween(begin: Colors.white, end: Colors.orange),
          duration: const Duration(seconds: 1),
          child: Image.asset(
            'assets/images/kun.jpg',
            fit: BoxFit.fitHeight,
            height: 400,
          ),
          builder: (_, Color color, __) {
            return ColorFiltered(
                colorFilter:
                    const ColorFilter.mode(Colors.orange, BlendMode.modulate),
                child: __);
          },
        ),
      ),
    );
  }
}
