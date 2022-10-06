import 'package:flutter/material.dart';
import '../Workout/colors.dart' as color;
import './doingGreatCard.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Column(
        children: [
          const doingGreatCard(),
        ],
      ),
    );
  }
}
