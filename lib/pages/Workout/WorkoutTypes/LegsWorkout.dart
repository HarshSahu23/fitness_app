import 'package:flutter/material.dart';
import '../colors.dart' as color;
import 'package:get/get.dart';

class LegsWorkout extends StatelessWidget {
  // BackWorkout({Key? key}) : super(key: key);

  final List<String> staticWorkoutDetailAddress = [
    "assets/superman.png",
    "assets/pullup.png",
    "assets/kettlebellswings.png",
    "assets/invertedrow.png",
    "assets/farmerswalk.png",
    "assets/barbelldeadlift.png",
  ];

  final List<String> gifWorkoutDetailAddress = [
    "assets/Superman.gif",
    "assets/Pullup.gif",
    "assets/KettleBellSwings.gif",
    "assets/InvertedRow.gif",
    "assets/FarmersWalk.gif",
    "assets/BarbellDeadlift.gif",
  ];

  final List<String> workoutName = [
    "Kettlebell Swings",
    "Barbell Deadlift",
    "Pull Up",
    "Inverted Row",
    "Farmers Walk",
    "Superman",
  ];

  final List<String> workoutTime = [
    "90 second",
    "65 second",
    "80 second",
    "45 second",
    "60 second",
    "120 second",
  ];

  @override
  Widget build(BuildContext context) {
    void _playVideo(int index) {
      showModalBottomSheet(
        context: context,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(gifWorkoutDetailAddress[index]))),
            ),
            behavior: HitTestBehavior.opaque,
          );
        },
      );
    }

    _buildCard(int index) {
      return Container(
          height: 135,
          child: Column(children: [
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(staticWorkoutDetailAddress[index]),
                          fit: BoxFit.cover)),
                  child: InkWell(
                    onTap: () {
                      _playVideo(index);
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      workoutName[index],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        workoutTime[index],
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color(0xFFeaeefc),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "15s rest",
                      style: TextStyle(color: Color(0xFF839fed)),
                    ),
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < 70; i++)
                      i.isEven
                          ? Container(
                              width: 3,
                              height: 1,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF839fed),
                                  borderRadius: BorderRadius.circular(2)),
                            )
                          : Container(
                              width: 3,
                              height: 1,
                              color: Colors.white,
                            )
                  ],
                )
              ],
            )
          ]));
    }

    _listView() {
      return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          itemCount: 6,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: _buildCard(index),
            );
          });
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          color.AppColor.gradientFirst.withOpacity(0.9),
          color.AppColor.gradientSecond,
        ], begin: const FractionalOffset(0.0, 0.4), end: Alignment.topRight)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 26,
                          color: color.AppColor.secondPageIconColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.info_outline,
                        size: 30,
                        color: color.AppColor.secondPageIconColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Back Muscles",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Workout",
                    style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.secondPageTitleColor,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor
                                    .secondPageContainerGradient1stColor,
                                color.AppColor
                                    .secondPageContainerGradient2ndColor,
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.timer,
                                size: 20,
                                color: color.AppColor.secondPageIconColor),
                            const SizedBox(width: 5),
                            Text("90 min",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: color.AppColor.secondPageIconColor))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 220,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                color.AppColor
                                    .secondPageContainerGradient1stColor,
                                color.AppColor
                                    .secondPageContainerGradient2ndColor,
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.handyman_outlined,
                                size: 20,
                                color: color.AppColor.secondPageIconColor),
                            const SizedBox(width: 5),
                            Text("Kettlebell, Dumbbell",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: color.AppColor.secondPageIconColor))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(70))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Text("Circuit 1: Back Exercise",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.circuitsColor,
                          )),
                      Expanded(child: Container()),
                      Row(
                        children: [
                          Icon(Icons.loop,
                              size: 30, color: color.AppColor.loopColor),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "5 Sets",
                            style: TextStyle(
                              fontSize: 15,
                              color: color.AppColor.setsColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(child: _listView()),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
