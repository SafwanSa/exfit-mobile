import 'package:exfit/models/exercise.dart';
import 'package:exfit/services/excercises_service.dart';
import 'package:flutter/material.dart';

class ExercisesScreen extends StatelessWidget {
  List<Exercise> exercises = Exercise.DUMMY;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exfit'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(exercises[index].name);
        },
        itemCount: exercises.length,
      ),
    );
  }
}
