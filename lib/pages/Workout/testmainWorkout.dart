import 'dart:convert';

import 'package:fitness_app_test/Pages/Workout/Widgets/armsWorkCard.dart';
import 'package:fitness_app_test/Pages/Workout/Widgets/backWorkoutCard.dart';
import 'package:fitness_app_test/Pages/Workout/Widgets/chestWorkCard.dart';
import 'package:fitness_app_test/Pages/Workout/Widgets/coreWorkCard.dart';
import 'package:fitness_app_test/Pages/Workout/Widgets/legsWorkCard.dart';
import 'package:fitness_app_test/Pages/Workout/Widgets/thighWorkCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'video_info.dart';
import 'colors.dart' as color;
import 'package:flutter/material.dart';
import 'WorkoutTypes/ChestWorkout.dart';
import 'WorkoutTypes/CoreWorkout.dart';
import 'WorkoutTypes/ArmsWorkout.dart';
import 'WorkoutTypes/ThighWorkout.dart';
import 'WorkoutTypes/LegsWorkout.dart';
import 'WorkoutTypes/BackWorkout.dart';

class testHomePage extends StatefulWidget {
  const testHomePage({Key? key}) : super(key: key);

  @override
  State<testHomePage> createState() => _testHomePageState();
}

class _testHomePageState extends State<testHomePage> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      info = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  void navigateToNextScreen(BuildContext context, String workoutType) {
    switch (workoutType) {
      case "Chest":
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ChestWorkout()));
        break;
      case "Core":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const CoreWorkout()));
        break;
      case "Arms":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const ArmsWorkout()));
        break;
      case "Thigh":
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ThighWorkout()));
        break;
      case "Legs":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const LegsWorkout()));
        break;
      case "Back":
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const BackWorkout()));
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding:
            const EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    fontSize: 30,
                    color: color.AppColor.homePageTitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                    size: 20, color: color.AppColor.homePageIcons),
                SizedBox(width: 10),
                Icon(Icons.calendar_today_outlined,
                    size: 20, color: color.AppColor.homePageIcons),
                SizedBox(width: 15),
                Icon(Icons.arrow_forward_ios,
                    size: 20, color: color.AppColor.homePageIcons),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageSubtitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageDetail,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 5),
                InkWell(
                    onTap: () {
                      Get.to(() => VideoInfo());
                    },
                    child: Icon(Icons.arrow_forward,
                        size: 20, color: color.AppColor.homePageIcons)),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 10),
                    blurRadius: 10,
                    color: color.AppColor.gradientSecond.withOpacity(0.2),
                  )
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Workout",
                      style: TextStyle(
                        fontSize: 30,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                        fontSize: 20,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        fontSize: 20,
                        color: color.AppColor.homePageContainerTextSmall,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer,
                                size: 20,
                                color:
                                    color.AppColor.homePageContainerTextSmall),
                            SizedBox(width: 5),
                            Text(
                              "60 min",
                              style: TextStyle(
                                fontSize: 14,
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                              ),
                            )
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: color.AppColor.gradientFirst,
                                      blurRadius: 10,
                                      offset: Offset(4, 8))
                                ]),
                            child: Icon(Icons.play_circle_fill,
                                color: Colors.white, size: 45)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(children: [
              Text("\nArea of focus",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: color.AppColor.homePageTitle,
                  ))
            ]),
            Container(
              height: 152,
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Column(
                    children: [
                      Row(
                        children: const [
                          backWorkoutCard(),
                          armsWorkoutCard(),
                        ],
                      ),
                      Row(
                        children: const [
                          chestWorkoutCard(),
                          legsWorkoutCard(),
                        ],
                      ),
                      Row(
                        children: const [
                          coreWorkoutCard(),
                          thighWorkoutCard(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
