import 'package:flutter/material.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key, this.workoutName});

  final workoutName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(workoutName),backgroundColor: Colors.transparent,),
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 30),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 31, 27, 27),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    // Image.asset("assets/Screenshot 2024-11-24 104113.png")
                  ],
                ),
              )),
        ],
      ),
    );
  }

  _exerciseBox(){
    return ;
  }
}
