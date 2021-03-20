import 'package:exfit/models/exercise.dart';
import 'package:exfit/services/excercises_service.dart';
import '../widgets/scrolled_types.dart';
import 'package:flutter/material.dart';
import '../widgets/exercise.dart';

class ExercisesScreen extends StatefulWidget {
  @override
  _ExercisesScreenState createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  final ExercisesService exercisesService = ExercisesService();

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
              ScrolledTypes(),
              Expanded(
                child: FutureBuilder(
                  future: exercisesService.fetchData(5, 1),
                  builder: (context, AsyncSnapshot<List<Exercise>> snapshot) {
                    if (snapshot.hasData) {
                      final List<Exercise> exercises = snapshot.data;

                      return ListView.builder(
                        padding: EdgeInsets.all(5),
                        itemBuilder: (context, index) {
                          return ExerciseWidget(
                            exercise: exercises[index],
                          );
                        },
                        itemCount: exercises.length,
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
