import 'package:exfit/models/exercise.dart';
import 'package:exfit/services/excercises_service.dart';
import 'package:flutter/material.dart';

class ExerciseProvider with ChangeNotifier {
  List<Exercise> _exercises;
  final ExercisesService exercisesService = ExercisesService();

  List<Exercise> get exercises {
    return [..._exercises];
  }

  void addExercises(List<Exercise> exercises) {
    _exercises.clear();
    _exercises = [...exercises];
    notifyListeners();
  }

  void loadData(int limit, int page) {
    exercisesService.fetchData(100, page).then((List<Exercise> fetchedList) {
      if (fetchedList.isEmpty) {
        print('here');
      } else {
        print('here2');
        _exercises.addAll(fetchedList);
        notifyListeners();
      }
    });
  }
}
