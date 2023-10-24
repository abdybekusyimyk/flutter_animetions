import 'package:flutter/material.dart';

class Birinchi extends StatefulWidget {
  const Birinchi({super.key});

  @override
  State<Birinchi> createState() => _BirinchiState();
}

class _BirinchiState extends State<Birinchi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Heroanimation()));
          },
          child: Hero(
            tag: "Tag-1",
            child: Container(
              width: 200,
              height: 70,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}

class Heroanimation extends StatefulWidget {
  const Heroanimation({Key? key}) : super(key: key);

  @override
  _HeroanimationState createState() => _HeroanimationState();
}

class _HeroanimationState extends State<Heroanimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: Hero(
            tag: "Tag-1",
            child: Container(
              color: Colors.yellow,
            ),
          )),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
