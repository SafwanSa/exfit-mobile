import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class MusclesService {
  Future<List<String>> fetchData() async {
    final response =
        await http.get(Uri.http('localhost:3000', '/api/muscles/'));
    final List<dynamic> result = json.decode(response.body);
    List<String> list = [];
    result.forEach((element) {
      list.add(element as String);
    });
    return list;
  }
}
