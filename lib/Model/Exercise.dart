import 'package:get/get.dart';
import 'package:gym/Model/Set.dart';
import 'package:gym/Model/app_database.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Exercise {
  dynamic id;
  dynamic workoutId;
  String name;
  List<TestSet>? sets;

  Exercise({required this.name, this.sets, this.id, this.workoutId});

  factory Exercise.fromJson(Map<dynamic, dynamic> parsedJson) {
    return Exercise(
        id: parsedJson['id'],
        name: parsedJson['name'],
        sets: toListOFMySet(parsedJson['MySets']),
        workoutId: parsedJson['workout_id']);
  }

  static List<TestSet> toListOFMySet(List<dynamic> list) {
    List<TestSet> sets = list.map((e) => TestSet.fromJson(e)).toList();
    return sets;
  }

  Map<String, dynamic> toMap(dynamic workoutId) {
    return {'name': name, 'workout_id': workoutId};
  }
}

class TestExercise {
  dynamic id;
  dynamic workoutId;
  dynamic exerciseId;
  String name;
  // List<TestSet>? sets;
  RxList<TestSet> sets = <TestSet>[].obs;

  TestExercise({
    required this.name,
    this.id,
    this.workoutId,
    this.exerciseId,
        List<TestSet>? sets,

  });

  // Method to fetch sets for this exercise
    Future<void> fetchSets() async {
    try {
      // Fetch data from your database (replace this with actual DB call)
      final List<TestSet> fetchedSets = await fetchSetsFromDatabase(exerciseId);

      // Update the observable list (RxList) with the fetched sets
      sets.value = fetchedSets; // Automatically updates UI
    } catch (e) {
      print("Error fetching sets: $e");
    }
  }

  Future<List<TestSet>> fetchSetsFromDatabase(dynamic exerciseId) async {
    // Replace this with your actual database call (Supabase in this case)
    final response = await Supabase.instance.client
        .from('sets') // Assuming you have a 'sets' table
        .select()
        .eq('exercise_id', exerciseId); // Filter by exerciseId

    final data = response;

    // Convert the data into a list of TestSet objects
    List<TestSet> sets = data.map((e) => TestSet.fromJson(e)).toList();
    return sets;
  }

    // Method to add set
  void addSet(TestSet set) {
    sets.add(set);
  }


  factory TestExercise.fromJson(Map<dynamic, dynamic> parsedJson) {
    return TestExercise(
      id: parsedJson['id'],
      name: parsedJson['name'],
      workoutId: parsedJson['workout_id'],
      exerciseId: parsedJson['exercise_id'],
    );
  }

  static List<TestSet> toListOFMySet(List<dynamic> list) {
    return list.map((e) => TestSet.fromJson(e)).toList();
  }

  Map<String, dynamic> toMap(dynamic workoutId) {
    return {'name': name, 'workout_id': workoutId};
  }

  Stream<List<TestSet>> setsStream() {
    return Stream.fromFuture(SetDatabase().getSetsByExerciseId(exerciseId));
  }
}
