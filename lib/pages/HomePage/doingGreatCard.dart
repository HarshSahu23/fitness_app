import 'package:flutter/material.dart';
import '../Workout/colors.dart' as color;

class doingGreatCard extends StatelessWidget {
  const doingGreatCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 30),
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("assets/card.jpg"), fit: BoxFit.fill),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    offset: Offset(8, 10),
                    color: color.AppColor.gradientSecond.withOpacity(0.3),
                  ),
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(-1, -5),
                    color: color.AppColor.gradientSecond.withOpacity(0.3),
                  )
                ]),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(right: 200, bottom: 30),
            decoration: BoxDecoration(
              // color: Colors.redAccent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage("assets/figure.png"),
                // fit: BoxFit.fill
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 100,
            margin: const EdgeInsets.only(left: 150, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "You are doing great",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: color.AppColor.homePageDetail),
                ),
                const SizedBox(height: 10),
                RichText(
                    text: TextSpan(
                        text: "Keep it up\n",
                        style: TextStyle(
                            color: color.AppColor.homePagePlanColor,
                            fontSize: 16),
                        children: [TextSpan(text: "stick to your plan")]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
