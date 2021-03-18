import 'package:exfit/models/exercise.dart';
import 'package:flutter/material.dart';
import '../widgets/exercise.dart';

class ExercisesScreen extends StatelessWidget {
  final List<Exercise> exercises = Exercise.DUMMY;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exfit'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ExerciseWidget(
            exercise: exercises[index],
          );
        },
        itemCount: exercises.length,
      ),
    );
  }
}
