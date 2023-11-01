import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> with SingleTickerProviderStateMixin {
  late AnimationController controllerAnimation;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controllerAnimation =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<double>(begin: 0, end: 300).animate(controllerAnimation);
    // animation = Tween<double>(begin: 300, end: 0).animate(controllerAnimation);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controllerAnimation.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controllerAnimation.forward();
      }
    });
    animation.addListener(() {
      setState(() {});
    });
    controllerAnimation.forward();
  }

  @override
  void dispose() {
    controllerAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: animation.value,
            height: animation.value,
            child: const FlutterLogo(
              size: 40,
            ),
          )
        ],
      )),
    );
  }
}
