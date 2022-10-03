import 'package:flutter/material.dart';

class ChestWorkout extends StatelessWidget {
  const ChestWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Chest Workout",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
