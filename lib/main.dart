import 'package:flutter/material.dart';

import './Pages/Workout/mainWorkout.dart';
import './Pages/Meditate.dart';
import 'Pages/HomePage/HomePage.dart';
import './Pages/Yoga.dart';
import './Pages/Workout/testmainWorkout.dart';
import 'Pages/Diet/DietMain.dart';

void main(List<String> args) {
  runApp(MyNavigation());
}

class MyNavigation extends StatefulWidget {
  // const MyNavigation({Key? key}) : super(key: key);
  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  int _selectedIndex = 2;

  void onSelectedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final pages = [Yoga(), Meditate(), HomePage(), testHomePage(), dietMain()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     "Amble - The Fitness App",
        //   ),
        //   // leading: IconButton(onPressed: onPressed, icon: icon),
        //   actions: <Widget>[
        //     IconButton(
        //         onPressed: () => {print("pressed settings ")},
        //         icon: const Icon(Icons.settings)),
        //     IconButton(
        //         onPressed: () => {print("pressed notification")},
        //         icon: const Icon(Icons.notifications))
        //   ],
        // ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Container(
                  child: const Center(
                      child: Text(
                    "Hello Harsh !",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 50,
                    ),
                  )),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3), color: Colors.blue),
              ),
              ListTile(
                title: const Text("Menu Item 1"),
                onTap: () {
                  print("tapped 1");
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Menu Item 2"),
                onTap: () {
                  print("tapped 2");
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Menu Item 2"),
                onTap: () {
                  print("tapped 2");
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset('assets/Icons/yoga.png'),
                  height: 40,
                  width: 40,
                ),
                label: "Yoga",
                backgroundColor: Colors.lightGreen[400]),
            BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset('assets/Icons/meditation.png'),
                  height: 40,
                  width: 40,
                ),
                label: "Meditate",
                backgroundColor: Colors.indigo[400]),
            BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset('assets/Icons/home.png'),
                  height: 40,
                  width: 40,
                ),
                label: "Home",
                backgroundColor: Colors.blue[400]),
            BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset('assets/Icons/workout.png'),
                  height: 40,
                  width: 40,
                ),
                label: "Fitness",
                backgroundColor: Colors.teal[300]),
            BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset('assets/Icons/diet.png'),
                  height: 40,
                  width: 40,
                ),
                label: "Diet",
                backgroundColor: Colors.red[200]),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: onSelectedItem,
        ),
      ),
    );
  }
}
