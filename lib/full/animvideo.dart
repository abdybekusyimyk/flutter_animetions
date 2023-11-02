import 'package:flutter/material.dart';

class Animvideo extends StatefulWidget {
  const Animvideo({Key? key}) : super(key: key);

  @override
  AnimvideoState createState() => AnimvideoState();
}

class AnimvideoState extends State<Animvideo>
    with SingleTickerProviderStateMixin {
  bool isSelect = true;
  late AnimationController animationController;
  late Animation colorAnimamtion;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    colorAnimamtion = ColorTween(begin: Colors.black87, end: Colors.white)
        .animate(animationController);

    animationController.addListener(() {});
    // animationController.addStatusListener((status) {
    //   setState(() {
    //     isSelect = isSelect;
    //   });
    // });
  }

  void onTaped() => setState(() {
        isSelect = !isSelect;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.teal,
      body: Center(
        child: GestureDetector(
          onTap: () {
            onTaped();
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            width: 320,
            height: 100,
            decoration: BoxDecoration(
                color: isSelect ? Colors.black87 : Colors.white,
                borderRadius: BorderRadius.circular(50)),
            child: Stack(
                // clipBehavior: Clip.none,
                // alignment:
                // isSelect ? Alignment.centerLeft : Alignment.centerRight,
                children: [
                  AnimatedPositioned(
                    duration: const Duration(seconds: 2),
                    left: isSelect ? 50 : 240,
                    top: isSelect ? 8 : 70,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.topRight,
                              colors: isSelect
                                  ? [
                                      Colors.red,
                                      Colors.yellow,
                                      // Colors.yellowAccent,
                                    ]
                                  : [Colors.yellow, Colors.yellow]),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(seconds: 1),
                    left: 40,
                    top: 30,
                    child: ClipPath(
                      clipper: _MyClipper(),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: 20,
                        height: 30,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(seconds: 2),
                    right: isSelect ? 2 : 219,
                    curve: Curves.bounceOut,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 2),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          color: isSelect ? Colors.white : Colors.blue,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}

class _MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 0.5, size.height * 0.15);
    path.lineTo(size.width * 0.35, size.height * 0.4);
    path.lineTo(0.0, size.height * 0.4);
    path.lineTo(size.width * 0.25, size.height * 0.55);
    path.lineTo(size.width * 0.1, size.height * 0.8);
    path.lineTo(size.width * 0.5, size.height * 0.65);
    path.lineTo(size.width * 0.9, size.height * 0.8);
    path.lineTo(size.width * 0.75, size.height * 0.55);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width * 0.65, size.height * 0.4);
    path.lineTo(size.width * 0.5, size.height * 0.15);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
