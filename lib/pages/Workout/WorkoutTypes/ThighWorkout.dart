import 'package:flutter/material.dart';

class ThighWorkout extends StatelessWidget {
  const ThighWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Thigh Workout",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
