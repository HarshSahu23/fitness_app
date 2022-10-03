import 'package:flutter/material.dart';

class LegsWorkout extends StatelessWidget {
  const LegsWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Legs Workout",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
