import 'package:flutter/material.dart';
import '../Workout/colors.dart' as color;
import './doingGreatCard.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import './WelcomUserCard.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Amble - The Fitness App",
        ),
        // leading: IconButton(onPressed: onPressed, icon: icon),
        actions: <Widget>[
          IconButton(
              onPressed: () => {print("pressed settings ")},
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () => {print("pressed notification")},
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 5,
          ),
          WelcomeUserCard(),
          const SizedBox(
            width: double.infinity,
            height: 10,
          ),
          Row(
            children: const [cpiOne(), cpiTwo(), cpiThree()],
          ),
          const doingGreatCard(),
        ],
      ),
    );
  }
}

class cpiOne extends StatelessWidget {
  const cpiOne({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CircularPercentIndicator(
        radius: 50,
        lineWidth: 10,
        percent: 0.4,
        animation: true,
        animationDuration: 1200,
        circularStrokeCap: CircularStrokeCap.round,
        footer: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("2500 Cal.",
                style: TextStyle(color: Colors.orange, fontSize: 20)),
            Text("Burnt", style: TextStyle(color: Colors.orange, fontSize: 16))
          ],
        ),
        center: const Icon(
          Icons.local_fire_department_sharp,
          size: 50,
          color: Colors.amber,
        ),
        backgroundColor: Colors.grey,
        progressColor: Colors.orange,
      ),
    );
  }
}

class cpiTwo extends StatelessWidget {
  const cpiTwo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CircularPercentIndicator(
        radius: 60,
        lineWidth: 15,
        percent: 0.8,
        animation: true,
        animationDuration: 1200,
        circularStrokeCap: CircularStrokeCap.round,
        footer: Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("2500 Step",
                  style: TextStyle(color: Colors.pink, fontSize: 20)),
              Text("Walked", style: TextStyle(color: Colors.pink, fontSize: 16))
            ],
          ),
        ),
        center: Container(
          height: 64,
          width: 64,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/steps.png"), fit: BoxFit.fill)),
        ),
        backgroundColor: Colors.grey,
        progressColor: Colors.pink,
      ),
    );
  }
}

class cpiThree extends StatelessWidget {
  const cpiThree({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CircularPercentIndicator(
        radius: 50,
        lineWidth: 10,
        percent: 0.6,
        animation: true,
        animationDuration: 1200,
        circularStrokeCap: CircularStrokeCap.round,
        footer: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("42 mins.",
                style: TextStyle(color: Colors.green, fontSize: 20)),
            Text("Exercised",
                style: TextStyle(color: Colors.green, fontSize: 16))
          ],
        ),
        center: const Icon(
          Icons.timer,
          size: 50,
          color: Color.fromARGB(255, 50, 120, 53),
        ),
        backgroundColor: Colors.grey,
        progressColor: Color.fromARGB(255, 0, 250, 8),
      ),
    );
  }
}
