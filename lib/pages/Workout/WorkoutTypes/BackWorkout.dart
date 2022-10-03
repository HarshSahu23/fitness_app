import 'package:flutter/material.dart';

class BackWorkout extends StatelessWidget {
  const BackWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Back Workout",
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
