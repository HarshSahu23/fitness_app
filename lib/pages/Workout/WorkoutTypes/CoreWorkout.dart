import 'package:flutter/material.dart';

class CoreWorkout extends StatelessWidget {
  const CoreWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Core Workout",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
