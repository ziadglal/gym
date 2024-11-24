import 'package:flutter/material.dart';
import 'package:gym/profileedit.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 27, 27),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 31, 27, 27),
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profileedit()));
              },
              icon: const Icon(
                Icons.edit,
              ),
              color: Colors.white,
            )
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 47, 41, 41),
                  ),
                  child: Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const CircleAvatar(
                              radius: 80,
                              backgroundImage:
                                  AssetImage("assets/20221023_152100.jpg"))),
                      Container(
                        padding: const EdgeInsets.only(left: 100, top: 30),
                        child: Column(
                          children: [
                            const Text(
                              "Ziad Galal",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Flutter Developer",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "01069161841",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 31, 27, 27),
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50, vertical: 20)),
                                onPressed: () {},
                                child: const Text(
                                  "Beginner",
                                  style: TextStyle(fontSize: 20),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 47, 41, 41),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          "About Me",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          "Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal,Ziad Galal",
                          style: TextStyle(
                              color: Color.fromARGB(255, 87, 87, 87),
                              fontWeight: FontWeight.w900,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 47, 41, 41),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          "My Exercises",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          "Favourite",
                          style: TextStyle(
                              color: Color.fromARGB(255, 87, 87, 87),
                              fontWeight: FontWeight.w900,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                Exercises(
                                  ex1: "awl tmryn",
                                  ex2: "eltany",
                                  ex3: "eltalt",
                                  ex4: "elrab3",
                                  ex5: "elams",
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 47, 41, 41),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          "Social Media",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: const Text(
                          "Follow Me On",
                          style: TextStyle(
                              color: Color.fromARGB(255, 87, 87, 87),
                              fontWeight: FontWeight.w900,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(
                              top: 20, left: 20, right: 20),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.white,
                                size: 50,
                              ),
                              Icon(
                                Icons.facebook,
                                color: Colors.white,
                                size: 50,
                              ),
                              Icon(
                                Icons.facebook,
                                color: Colors.white,
                                size: 50,
                              )
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

// ignore: must_be_immutable
class Exercises extends StatelessWidget {
  Exercises({super.key, this.ex1, this.ex2, this.ex3, this.ex4, this.ex5});
  String? ex1;
  String? ex2;
  String? ex3;
  String? ex4;
  String? ex5;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20),
      child: Row(
        children: [
          Text(
            ex1!,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            ex2!,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            ex3!,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            ex4!,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            ex5!,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
