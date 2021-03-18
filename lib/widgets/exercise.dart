import 'package:exfit/models/exercise.dart';
import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget {
  final Exercise exercise;

  ExerciseWidget({@required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      child: Card(
          child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              exercise.imagesUrls[0],
            ),
          )
        ],
      )),
    );
  }
}
