import 'package:flutter/material.dart';
import 'dart:math';

import 'package:uuid/uuid.dart';

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

  static List<Exercise> DUMMY = [
    Exercise(
      id: Uuid().toString(),
      name: '1 Leg Pushup',
      steps:
          "Steps : \n\n1.) Start off by getting yourself into a pushup position with arms shoulder width apart and feet extended behind you with toes flat on the floor.\n\n2.) Take one leg and place it over the other so that only one foot is positioned on the floor.\n\n3.) Slowly lower yourself down until your chest almost touches the floor then hold for a count.\n\n4.) Return back to the starting position.\n\n5.) Repeat for as many reps and sets as desired.",
      imagesUrls: [
        "https://www.jefit.com/images/exercises/800_600/4212.jpg",
        "https://www.jefit.com/images/exercises/800_600/4213.jpg"
      ],
      targetedMuscleImageUrl: 'https://www.jefit.com/images/exercises/b3.jpg',
      muscleGroup: 'Chest',
      difficulty: 'Beginner',
      equipment: 'Body Only',
      type: 'Strength',
    ),
    Exercise(
      id: Uuid().toString(),
      name: '90 90 Hamstring',
      steps:
          "Steps : \n\n1.) To begin this exercise; start off lying flat on your back with one leg extended out and with your other leg bend it and grab the knee with your hands.\n\n2.) Take the leg that is being bent and extend it straight into the air and hold onto the position for up to 15 seconds and then alternate legs.\n\n3.) Repeat this exercise for as many repetitions as needed",
      imagesUrls: [
        "https://www.jefit.com/images/exercises/800_600/1860.jpg",
        "https://www.jefit.com/images/exercises/800_600/1861.jpg"
      ],
      targetedMuscleImageUrl: 'https://www.jefit.com/images/exercises/b3.jpg',
      muscleGroup: 'Upper Legs',
      difficulty: 'Beginner',
      equipment: 'Body Only',
      type: 'Stretching',
    ),
    Exercise(
      id: Uuid().toString(),
      name: 'Band Calf Raise',
      steps:
          "Steps : \n\n1.) To begin this exercise; start off with taking an exercise and standing on it with equal amount of band on both sides.\n\n2.) Taking the handles of the bands, elevate your arms towards the side of your head so that the bands tighten up.\n\n3.) Then while leaving your hands by your head, stand on your toes and squeeze tightly on your calves.\n\n4.) After holding on for a few seconds, release and go back to the starting position with your hands still by your head.\n\n5.) Repeat this exercise for as many repetitions as needed.",
      imagesUrls: [
        "https://www.jefit.com/images/exercises/800_600/4212.jpg",
        "https://www.jefit.com/images/exercises/800_600/4213.jpg"
      ],
      targetedMuscleImageUrl: 'https://www.jefit.com/images/exercises/b3.jpg',
      muscleGroup: 'Lower Legs',
      difficulty: 'Beginner',
      equipment: 'Bands',
      type: 'Strength',
    ),
  ];

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
