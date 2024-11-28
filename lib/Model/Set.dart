import 'package:get/get.dart';

class ExerciseSet {
  int reps;
  double weight;
  // bool isWarmUp;
  // String intensity;
  // String comments;

  ExerciseSet({
    required this.reps,
    required this.weight,
    // this.isWarmUp = false,
    // this.intensity = "hard",
    // this.comments = '',
  });

  factory ExerciseSet.fromJson(Map<dynamic, dynamic> parsedJson) {
    return ExerciseSet(reps: parsedJson['reps'], weight: parsedJson['weight']);
  }
}

class TestSet {
  dynamic id;
  String? exerciseId;
  final double weight;  // Make sure weight is a double
  final int reps;       // Reps could be an int
  RxList<TestSet> sets = RxList<TestSet>();  // Make the sets reactive
  // bool isWarmUp;
  // String intensity;
  // String comments;

  TestSet({
    required this.reps,
    required this.weight,
    // required this.order,
    // this.isWarmUp = false,
    // this.intensity = "hard",
    // this.comments = '',
  });

  factory TestSet.fromJson(Map<dynamic, dynamic> parsedJson) {
    return TestSet(
        reps: parsedJson['reps'],
        weight: parsedJson['weight']?.toDouble() ?? 6666666.0,
        // order: parsedJson['order']
        );
  }
    static List<TestSet> toListOfTestSets(List<dynamic> list) {
    return list.map((e) => TestSet.fromJson(e)).toList();
  }

  Map<String, dynamic> toMap(String exerciseId) {
    return {
      'reps': reps,
      'weight': weight,
      'exercise_id': exerciseId,
      // 'order': order
    };
  }
}
