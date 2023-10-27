import 'package:flutter/material.dart';

class AniControler extends StatefulWidget {
  const AniControler({Key? key}) : super(key: key);

  @override
  _AniControlerState createState() => _AniControlerState();
}

class _AniControlerState extends State<AniControler>
    with SingleTickerProviderStateMixin {
  bool isFal = false;
  late AnimationController animationController;
  late Animation colorAnimation;
  late Animation<double> sizeAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);

    colorAnimation = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(animationController);

    sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem(tween: Tween(begin: 70, end: 120), weight: 120),
      TweenSequenceItem(tween: Tween(begin: 120, end: 70), weight: 120)
    ]).animate(animationController);

    animationController.addListener(() {
      print(animationController.value);
      print(colorAnimation.value);
    });

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFal = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFal = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: AnimatedBuilder(
        animation: animationController,
        builder: (context, _) {
          return IconButton(
              isSelected: false,
              onPressed: () {
                isFal
                    ? animationController.reverse()
                    : animationController.forward();
              },
              icon: Icon(
                Icons.favorite,
                size: sizeAnimation.value,
                color: colorAnimation.value,
              ));
        },
      )),
    );
  }
}
