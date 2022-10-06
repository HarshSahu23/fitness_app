import 'package:flutter/material.dart';

import '../WorkoutTypes/ArmsWorkout.dart';
import '../WorkoutTypes/CoreWorkout.dart';
import '../WorkoutTypes/ChestWorkout.dart';
import '../WorkoutTypes/ThighWorkout.dart';
import '../WorkoutTypes/LegsWorkout.dart';
import '../WorkoutTypes/BackWorkout.dart';

void navigateToNextScreen(BuildContext context, String workoutType) {
  switch (workoutType) {
    case "Chest":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ChestWorkout()));
      break;
    case "Core":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => CoreWorkout()));
      break;
    case "Arms":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ArmsWorkout()));
      break;
    case "Thigh":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ThighWorkout()));
      break;
    case "Legs":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LegsWorkout()));
      break;
    case "Back":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => BackWorkout()));
      break;
    default:
  }
}
