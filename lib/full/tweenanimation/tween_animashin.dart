import 'package:flutter/material.dart';

class TweenAnimashin extends StatefulWidget {
  const TweenAnimashin({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TweenAnimashinState createState() => _TweenAnimashinState();
}

class _TweenAnimashinState extends State<TweenAnimashin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TweenAnimationBuilder(
            duration: const Duration(seconds: 1),
            tween: Tween<double>(begin: 0, end: 1),
            curve: Curves.bounceIn,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Padding(
                  padding: EdgeInsets.only(top: value * 50),
                  child: child,
                ),
              );
            },
            child: const Text(
              'TweenAnimationBuilder',
              style: TextStyle(color: Colors.black, fontSize: 30),
            )),
      ),
    );
  }
}
