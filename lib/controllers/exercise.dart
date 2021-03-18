class ExerciseController {
  static ExerciseController exerciseController = ExerciseController();

  double getPercentage(String difficulty) {
    if (difficulty == 'Beginner') {
      return 0.3;
    } else if (difficulty == 'Intermediate') {
      return 0.6;
    } else if (difficulty == 'Expert') {
      return 0.9;
    } else {
      return 0;
    }
  }
}
