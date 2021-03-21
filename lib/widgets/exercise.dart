import 'package:cached_network_image/cached_network_image.dart';
import 'package:exfit/animations/bounce.dart';
import 'package:exfit/controllers/exercise.dart';
import 'package:exfit/models/exercise.dart';
import 'package:exfit/widgets/difficulty_level.dart';
import 'package:exfit/widgets/exercise_details.dart';
import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget {
  final Exercise exercise;
  final ExerciseController exerciseController =
      ExerciseController.exerciseController;

  ExerciseWidget({@required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      width: double.infinity,
      child: Card(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Bounce(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return ExerciseDetailsSheet(
                          exercise: exercise,
                        );
                      });
                },
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Text(''),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                exercise.name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            DifficultyLevel(
                              length: 4,
                              size: 13,
                              percentage: exerciseController
                                  .getPercentage(exercise.difficulty),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Bounce(
              onTap: () {},
              child: Icon(
                Icons.add_box_rounded,
                size: 45,
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      )),
    );
  }
}
