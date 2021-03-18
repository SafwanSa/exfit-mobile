import 'package:flutter/material.dart';

class Exercise {
  final String id;
  final String name;
  final String steps;
  final List<String> imagesUrls;
  final String targetedMuscleImageUrl;
  final String muscleGroup;
  final String difficulty;
  final String equipment;
  final String type;

  // static List<Exercise> DUMMY = [Exercise()];

  Exercise({
    @required this.id,
    @required this.name,
    @required this.steps,
    @required this.imagesUrls,
    @required this.targetedMuscleImageUrl,
    @required this.muscleGroup,
    @required this.difficulty,
    @required this.equipment,
    @required this.type,
  });

  factory Exercise.fromJson(Map<String, dynamic> json) {
    return Exercise(
      id: json['id'].toString(),
      name: json['name'],
      muscleGroup: json['mainMuscleGroup'],
      equipment: json['equipment'],
      difficulty: json['difficulty'],
      steps: json['steps'],
      targetedMuscleImageUrl: json['targetedMImage'],
      imagesUrls: [],
      type: json['type'],
    );
  }
}
