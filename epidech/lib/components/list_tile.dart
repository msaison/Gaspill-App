import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class TemplateTileList extends StatelessWidget {
  final String title;
  final int value;
  const TemplateTileList({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    if (value <= 30) {
      color = Colors.red.shade100;
    } else if (value <= 70) {
      color = Colors.orange.shade100;
    } else {
      color = Colors.green.shade100;
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: color,
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Jost',
            fontWeight: FontWeight.w400
          ),
        ),
        subtitle: FAProgressBar(
          backgroundColor: const Color(0xFFC4C4C4),
          progressColor: const Color(0xFFFFFFFF),
          size: 15,
          currentValue: value,
          displayText: "%",
          displayTextStyle: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
