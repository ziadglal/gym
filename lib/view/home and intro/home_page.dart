import 'package:flutter/material.dart';
import 'package:gym/view/exercises/exercise_1.dart';
import 'package:gym/view/profile%20and%20profile_edit/profile.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 27, 27),
      body: ListView(
        children: [
          welcomeprofilepic(context),
          graphcontainer(),
          trainingcenter(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const exercise_section()));
            },
            child: Stack(
              children: [
                Image.asset(
                  "assets/Rectangle 39_m_vertical.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 110, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Body",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "5 Exercises",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Stack(
            children: [
              Image.asset(
                "assets/Rectangle 39_m_vertical.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 110, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Body",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "5 Exercises",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Stack(
            children: [
              Image.asset(
                "assets/Rectangle 39_m_vertical.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 110, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Body",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "5 Exercises",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explor",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  "New Exercises For Today",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget welcomeprofilepic(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome, Ziad",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                "Monday, 18 Aug 2005",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
            child: const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/20221023_152100.jpg"),
            ),
          ),
        ],
      ),
    );
  }

  Widget graphcontainer() {
    return Container(
      color: Colors.black,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Current Status",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 150),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Day 1", style: TextStyle(color: Colors.white)),
              Text("Day 2", style: TextStyle(color: Colors.white)),
              Text("Day 3", style: TextStyle(color: Colors.white)),
              Text("Day 4", style: TextStyle(color: Colors.white)),
              Text("Day 5", style: TextStyle(color: Colors.white)),
            ],
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildMetric("78", "BPM"),
              _buildMetric("340", "KKAL"),
              _buildMetric("120", "Weight"),
            ],
          ),
        ],
      ),
    );
  }

  static Widget _buildMetric(String value, String unit) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          unit,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Widget trainingcenter() {
    return const Padding(
      padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Training",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Text(
            "Choose Your Work Out",
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
