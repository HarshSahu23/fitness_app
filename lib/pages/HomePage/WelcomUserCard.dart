import 'package:flutter/material.dart';
import '../Workout/colors.dart' as color;

class WelcomeUserCard extends StatelessWidget {
  const WelcomeUserCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 30),
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    offset: Offset(8, 10),
                    color: Colors.lightBlue.withOpacity(0.1),
                  ),
                  BoxShadow(
                    blurRadius: 10,
                    offset: Offset(-1, -5),
                    color: Colors.lightBlueAccent.withOpacity(0.2),
                  )
                ]),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 260, top: 20),
            decoration: BoxDecoration(
              // color: Colors.redAccent.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage("assets/sun.png"),
                // fit: BoxFit.fill
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 100,
            margin: const EdgeInsets.only(left: 30, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Good Morning, Aman",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
                const SizedBox(height: 10),
                RichText(
                    text: const TextSpan(
                  text: "What will you do today ?\n",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
