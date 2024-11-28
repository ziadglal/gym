import 'package:gym/Model/Exercise.dart';
import 'package:gym/Model/Set.dart';
import 'package:gym/Model/Workout.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class WorkoutDatabase {
  final workout = Supabase.instance.client.from('workout');

  // Creat Workout
  Future creatWorkoutTest(TestWorkout newWorkout) async {
    await workout.insert(newWorkout.toMap());
  }

  // Read Workouts
  final streamOfWorkouts = Supabase.instance.client
      .from('workout')
      .stream(primaryKey: ['id']).map(
          (data) => data.map((workoutMap) => TestWorkout.frommap(workoutMap)));

  // Update WorkoutName
  Future updateWorkoutName(TestWorkout oldWorkout, String newName) async {
    await workout.update({'title': newName}).eq('id', oldWorkout.id!);
  }

  // Delete Workout
  Future deleteWorkout(TestWorkout thisWorkout) async {
    await workout.delete().eq('id', thisWorkout.id!);
  }
}

// ================================================================

class ExerciseDatabase {
  final exercise = Supabase.instance.client.from('exercises');

  // Creat Exercise
  Future creatExercise(TestExercise newExercise, dynamic workoutId) async {
    await exercise.insert(newExercise.toMap(workoutId));
  }

  // Read Exercise
  // final streamOfExercises = Supabase.instance.client.from('exercises').stream(primaryKey: [
  //   'id'
  // ]).map((data) => data.map((workoutMap) => TestExercise.frommap(workoutMap)));

  // Update Exercise
  Future updateExerciseName(TestExercise oldExercise, String newName) async {
    await exercise.update({'name': newName}).eq('id', oldExercise.id!);
  }

  // Delete Exercise
  Future deleteExercise(TestExercise thisExercise) async {
    await exercise.delete().eq('id', thisExercise.id!);
  }
}

// ================================================================

class SetDatabase {
  final sets = Supabase.instance.client.from('sets');

  // Creat Set
  Future addNewSet(TestSet newSet, dynamic exerciseId) async {
    await sets.insert(newSet.toMap(exerciseId));
  }

  // Read Set
  Stream<Iterable<TestSet>> getSets(TestExercise exercise) {
    final streamOfSets = Supabase.instance.client
        .from('sets')
        .stream(primaryKey: ['id'])
        .eq('exercise_id', exercise.exerciseId)
        .map((data) => data.map((setMap) => TestSet.fromJson(setMap)));
    return streamOfSets;
  }

    Future<List<TestSet>> getSetsByExerciseId(dynamic exerciseId) async {
    // Here you should use your database client to fetch sets by exercise_id.
    final response = await Supabase.instance.client
        .from('sets')
        .select('*')
        .eq('exercise_id', exerciseId);

    // If successful, convert the result to a list of TestSet objects
      return TestSet.toListOfTestSets(response);
  }


  // Update Set
  // Future updateSetRepsAndWeight(TestSet oldset, String newName) async {
  //   await sets.update({'name': newName}).eq('id', oldset.id!);
  // }

  // Delete Set
  Future deleteSet(TestSet thisExercise) async {
    await sets.delete().eq('id', thisExercise.id!);
  }
}
