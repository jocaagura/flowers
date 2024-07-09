import 'package:flutter/material.dart';

import '../widgets/flower_custom_painter_widget.dart';
import '../widgets/flower_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numPetals = 9;

  void incrementPetals() {
    setState(() {
      numPetals = numPetals + 1;
      if (numPetals > 35) {
        numPetals = 9;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const double radius = 50.0;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const SizedBox(
            width: double.infinity,
          ),
          FlowerWidget(
            radius: radius,
            numPetals: numPetals,
          ),
          FlowerCustomPainterWidget(
            radius: radius,
            numPetals: numPetals,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementPetals,
        child: const Icon(Icons.add),
      ),
    );
  }
}
