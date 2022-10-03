import 'package:flutter/material.dart';

class Yoga extends StatefulWidget {
  const Yoga({Key? key}) : super(key: key);

  @override
  State<Yoga> createState() => _YogaState();
}

class _YogaState extends State<Yoga> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text("Yoga page custom")),
    );
  }
}
