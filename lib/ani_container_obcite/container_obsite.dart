import 'package:flutter/material.dart';
import 'package:flutter_animetions/hero/heroanimation.dart';

class ContainerObsite extends StatefulWidget {
  const ContainerObsite({Key? key}) : super(key: key);

  @override
  _ContainerObsiteState createState() => _ContainerObsiteState();
}

class _ContainerObsiteState extends State<ContainerObsite> {
  double margin = 30;
  Color color = Colors.teal;
  double width = 200;
  double height = 200;

  bool islect = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animetion Container obside')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
                onPressed: () {
                  setState(() {
                    islect = !islect;
                  });
                  // setState(() {

                  //   margin = 10.0;
                  //   width = 100.0;
                  //   height = 100.0;
                  //   color = Colors.red;
                  // });
                },
                child: Text('1'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Birinchi()));
                  // setState(() {

                  //   margin = 10.0;
                  //   width = 100.0;
                  //   height = 100.0;
                  //   color = Colors.red;
                  // });
                },
                child: Text('2'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {},
                child: Text('3'),
              ),
            ],
          ),
          const SizedBox(height: 40),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            margin: islect ? EdgeInsets.all(margin) : EdgeInsets.all(10),
            width: islect ? width : 100,
            height: islect ? height : 100,
            color: islect ? color : Colors.red,
            child: AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: islect ? 1.0 : 0.0,
                child: Center(
                  child: Text(
                    'OBACITY',
                    style: TextStyle(fontSize: islect ? 40 : 20),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
