import 'package:flutter/material.dart';

class Yoga extends StatefulWidget {
  // const Yoga({Key? key}) : super(key: key);

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Amble - The Fitness App",
        ),
        // leading: IconButton(onPressed: onPressed, icon: icon),
        actions: <Widget>[
          IconButton(
              onPressed: () => {print("pressed settings ")},
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () => {print("pressed notification")},
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: const Center(child: Text("Yoga page custom")),
    );
  }
}
