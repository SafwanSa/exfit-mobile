import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';

class MusclesService {
  Future<List<String>> fetchData() async {
    final response =
        await http.get(Uri.http('localhost:3000', '/api/muscles/'));
    final List<String> list = json.decode(response.body);
    return list;
  }
}
