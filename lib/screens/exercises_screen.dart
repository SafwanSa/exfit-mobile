import 'package:exfit/models/exercise.dart';
import 'package:exfit/widgets/search.dart';
import 'package:flutter/material.dart';
import '../widgets/exercise.dart';

class ExercisesScreen extends StatelessWidget {
  final List<Exercise> exercises = Exercise.DUMMY;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exfit'),
          actions: [
            IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Search(),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(5),
                  itemBuilder: (context, index) {
                    return ExerciseWidget(
                      exercise: exercises[index],
                    );
                  },
                  itemCount: exercises.length,
                ),
              ),
            ],
          ),
        ));
  }
}
