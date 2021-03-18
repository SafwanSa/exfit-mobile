import 'package:exfit/animations/bounce.dart';
import 'package:exfit/models/exercise.dart';
import 'package:exfit/widgets/exercise_details.dart';
import 'package:flutter/material.dart';

class ExerciseWidget extends StatelessWidget {
  final Exercise exercise;

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
                        child: Image.network(
                          exercise.imagesUrls[0],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              exercise.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 15),
                            Text(
                              exercise.difficulty,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black38,
                              ),
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
