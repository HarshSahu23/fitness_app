import 'package:flutter/material.dart';
import '../colors.dart' as color;
import './navigateToNextScreen.dart';

class coreWorkoutCard extends StatelessWidget {
  // const coreWorkoutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 90) / 2,
      height: 145,
      margin: const EdgeInsets.only(
        top: 15,
        bottom: 15,
      ),
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                blurRadius: 3,
                offset: const Offset(5, 5),
                color: color.AppColor.gradientSecond.withOpacity(0.1)),
            BoxShadow(
                blurRadius: 3,
                offset: const Offset(-5, -5),
                color: color.AppColor.gradientSecond.withOpacity(0.1))
          ]),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              navigateToNextScreen(context, "Core");
            },
            child: Container(
                height: 100,
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/CoreWorkout/coreUseOnCard.png")),
                )),
          ),
          InkWell(
            onTap: () {
              navigateToNextScreen(context, "Core");
            },
            child: const Center(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text("Core",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
