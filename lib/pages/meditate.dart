import 'package:flutter/material.dart';

class Meditate extends StatefulWidget {
  // const Meditate({Key? key}) : super(key: key);

  @override
  State<Meditate> createState() => _MeditateState();
}

class _MeditateState extends State<Meditate> {
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
      body: const Center(child: Text("Meditaiton page custom")),
    );
  }
}
