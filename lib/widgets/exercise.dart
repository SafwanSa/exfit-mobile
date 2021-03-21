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
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Bounce(
                  onTap: () {},
                  child: Icon(
                    Icons.add_box_rounded,
                    color: Theme.of(context).primaryColor,
                    size: 40,
                  ),
                ),
              ),
              Bounce(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (ctx) {
                        return ExerciseDetailsSheet(
                          exercise: exercise,
                        );
                      });
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 110,
                      child: CachedNetworkImage(
                        imageUrl: exercise.imagesUrls[0],
                        placeholder: (context, url) =>
                            new CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            new Icon(Icons.error),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              exercise.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            DifficultyLevel(
                                size: 12,
                                length: 5,
                                percentage: exerciseController
                                    .getPercentage(exercise.difficulty))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
