import 'package:gym/Model/Exercise.dart';

class Workout {
  String date;
  String name;
  int duration;
  List<Exercise> exercise;

  Workout(
      {required this.date,
      required this.exercise,
      required this.name,
      required this.duration});

  factory Workout.fromJson(Map<String, dynamic> parsedJson) {
    return Workout(
        date: parsedJson['date'],
        duration: parsedJson['time'],
        name: parsedJson['session_name'],
        exercise: toListOfExercises(parsedJson['list_of_exercises']));
  }

  static List<Exercise> toListOfExercises(List<dynamic> list) {
    List<Exercise> all = list.map((e) => Exercise.fromJson(e)).toList();
    return all;
  }
}

class TestWorkout {
  dynamic id;
  dynamic workoutId;
  DateTime date;
  String name; 

  TestWorkout({this.id, required this.name, required this.date, this.workoutId});

  factory TestWorkout.frommap(Map<String, dynamic> map) {
    return TestWorkout(
        id: map['id'],
        name: map['title'] as String,
        date: dateFormating(map['created_at']),
        workoutId: map['workout_id']);
  }

  static DateTime dateFormating(String datetime) {

    String year = datetime.substring(0, 4);
    String month = datetime.substring(5, 7);
    String day = datetime.substring(8, 10);
    String hour = datetime.substring(11, 13);
    String minute = datetime.substring(14, 16);
    String second = datetime.substring(17, 19);

    DateTime createdAt = DateTime(
      int.parse(year),
      int.parse(month),
      int.parse(day),
      int.parse(hour),
      int.parse(minute),
      int.parse(second),
    );
    return createdAt;
  }

  Map<String, dynamic> toMap() {
    return {'title': name};
  }
}
