import 'package:http/http.dart' as http;

class ExercisesService {
  static Future<http.Response> fetchExercises() {
    return http.get(Uri.http('localhost:3000', '/api/exercises/'));
  }

  static void loadData() {
    fetchExercises().then((res) {
      print(res.body);
    });
  }
}
