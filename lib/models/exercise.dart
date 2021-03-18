import 'package:enum_to_string/enum_to_string.dart';
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
}
