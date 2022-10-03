import 'package:flutter/material.dart';

class ArmsWorkout extends StatelessWidget {
  const ArmsWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Arms Workout",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
