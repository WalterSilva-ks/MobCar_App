import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class StarsEvaluate extends StatefulWidget {
  const StarsEvaluate({Key? key}) : super(key: key);

  @override
  State<StarsEvaluate> createState() => _StarsEvaluateState();
}

class _StarsEvaluateState extends State<StarsEvaluate> {
  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    return RatingStars(
      value: 4,
      onValueChanged: (v) {
        //
        setState(() {
          value = v;
        });
      },
      starBuilder: (index, color) => Icon(Icons.star, color: color),
      starCount: 5,
      starSize: 20,
      valueLabelRadius: 10,
      maxValue: 5,
      starSpacing: 2,
      maxValueVisibility: false,
      valueLabelVisibility: false,
      animationDuration: const Duration(milliseconds: 5500),
      valueLabelMargin: const EdgeInsets.only(right: 8),
      starOffColor: const Color.fromARGB(255, 254, 254, 255),
      starColor: const Color.fromARGB(255, 255, 225, 0),
    );
  }
}
