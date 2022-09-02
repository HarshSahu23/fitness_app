import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyNavigation());
}

class MyNavigation extends StatefulWidget {
  const MyNavigation({Key? key}) : super(key: key);
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Amble - The Fitness App",
          ),
          leading: const Icon(Icons.menu),
          actions: <Widget>[
            IconButton(
                onPressed: () => {print("pressed settings ")},
                icon: const Icon(Icons.settings)),
            IconButton(
                onPressed: () => {print("pressed notification")},
                icon: const Icon(Icons.notifications))
          ],
        ),
        body: const Center(child: Text("Working")),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset('assets/Icons/yoga.png'),
                  height: 40,
                  width: 40,
                ),
                label: "Yoga",
                backgroundColor: Colors.purple[200]),
            BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset('assets/Icons/meditation.png'),
                  height: 40,
                  width: 40,
                ),
                label: "Meditate",
                backgroundColor: Colors.grey[600]),
            BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset('assets/Icons/workout.png'),
                  height: 40,
                  width: 40,
                ),
                label: "Fitness",
                backgroundColor: Colors.blueAccent[200]),
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
