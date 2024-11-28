import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/signup.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            height: 700,
            width: double.infinity,
            child: Image.asset(
              "assets/ambitious-studio-rick-barrett-9a_m6ZWzQbA-unsplash.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 700,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 5),
              const Text(
                "Welcome To",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const Text(
                "Fitness Gym App",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 255, 213),
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Get ready to start a journey to build a good body with us",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Get.off(() => const Signup());
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const Signup(),
                    //   ),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 255, 213),
                  ),
                  child: const Text(
                    "Signup",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ],
      ),
    );
  }
}
