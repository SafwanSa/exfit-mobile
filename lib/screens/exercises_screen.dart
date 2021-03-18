import 'package:exfit/services/excercises_service.dart';
import 'package:flutter/material.dart';

class ExercisesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ExercisesService.loadData();
    return Scaffold(
      appBar: AppBar(
        title: Text('Exfit'),
      ),
      body: Text(''),
    );
  }
}
