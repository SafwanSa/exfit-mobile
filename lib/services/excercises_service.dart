import 'dart:convert';

import 'package:exfit/models/exercise.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class ExercisesService {
  Future<List<Exercise>> fetchData(int limit, int page) async {
    final response =
        await http.get(Uri.http('localhost:3000', '/api/exercises/', {
      'limit': limit.toString(),
      'page': page.toString(),
    }));

    final List<Exercise> list = [];
    final Map<String, Object> decodedData = json.decode(response.body);
    final List<dynamic> decodedExercises = decodedData['exercises'];
    decodedExercises.forEach((item) {
      list.add(Exercise.fromJson((item)));
    });
    return list;
  }
}
