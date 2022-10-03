import 'package:flutter/material.dart';
import '../colors.dart' as color;
import './navigateToNextScreen.dart';

class thighWorkoutCard extends StatelessWidget {
  const thighWorkoutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 90) / 2,
      height: 140,
      margin: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(image: AssetImage("assets/ex3.png")),
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
      child: InkWell(
        onTap: () {
          navigateToNextScreen(context, "Thigh");
        },
        child: Center(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text("Thigh",
                style: TextStyle(
                    fontSize: 20, color: color.AppColor.homePageDetail)),
          ),
        ),
      ),
    );
  }
}
