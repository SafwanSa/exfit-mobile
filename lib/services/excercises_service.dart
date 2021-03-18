import 'dart:convert';

import 'package:exfit/models/exercise.dart';
import 'package:http/http.dart' as http;

class ExercisesService {
  static List<Exercise> exercises = [];
  static Future<http.Response> fetchExercises() {
    return http.get(Uri.http('localhost:3000', '/api/exercises/'));
  }

  static void loadData() async {
    final res = await fetchExercises();
    final List<Exercise> list = [];
    final List<Object> decodedData = json.decode(res.body);
    decodedData.forEach((item) {
      list.add(Exercise.fromJson((item)));
    });
    // exercises = [...list];
  }
}
