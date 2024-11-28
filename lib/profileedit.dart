import 'package:flutter/material.dart';
import 'package:gym/size_config.dart';

class Profileedit extends StatelessWidget {
  const Profileedit({super.key});

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
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 215,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 47, 41, 41),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(left: 20, top: 35),
                            child: const CircleAvatar(
                              radius: 65,
                              backgroundColor: Colors.white,
                              child: Text("Tap Here"),
                            )),
                        Container(
                          padding: const EdgeInsets.only(top: 30, right: 10),
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Your Name',
                                    labelStyle:
                                        const TextStyle(color: Colors.white),
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // Container(
                              //   width: 150,
                              //   child: TextField(
                              //     decoration: InputDecoration(
                              //       labelText: 'Your Job',
                              //       labelStyle:
                              //           const TextStyle(color: Colors.white),
                              //       filled: true,
                              //       fillColor: Colors.grey[800],
                              //       border: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(30),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              // Container(
                              //   width: 150,
                              //   child: TextField(
                              //     decoration: InputDecoration(
                              //       labelText: 'Your Phone Number',
                              //       labelStyle:
                              //           const TextStyle(color: Colors.white),
                              //       filled: true,
                              //       fillColor: Colors.grey[800],
                              //       border: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(30),
                              //       ),
                              //     ),
                              //   ),
                              // ),
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
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
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
                          child: Container(
                            padding: const EdgeInsets.only(right: 20),
                            width: double.infinity,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Your Bio',
                                labelStyle:
                                    const TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: Colors.grey[800],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
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
                      borderRadius: BorderRadius.circular(25),
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
                        SizedBox(
                          width: double.infinity,
                          height: screenHeight(context) * 0.1,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Container(
                                    width: 150,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Exercises',
                                        labelStyle: const TextStyle(
                                            color: Colors.white),
                                        filled: true,
                                        fillColor: Colors.grey[800],
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth(context) * 0.03,
                                  ),
                                  Container(
                                    width: 150,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Exercises',
                                        labelStyle: const TextStyle(
                                            color: Colors.white),
                                        filled: true,
                                        fillColor: Colors.grey[800],
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth(context) * 0.03,
                                  ),
                                  Container(
                                    width: 150,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Exercises',
                                        labelStyle: const TextStyle(
                                            color: Colors.white),
                                        filled: true,
                                        fillColor: Colors.grey[800],
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth(context) * 0.03,
                                  ),
                                  Container(
                                    width: 150,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Exercises',
                                        labelStyle: const TextStyle(
                                            color: Colors.white),
                                        filled: true,
                                        fillColor: Colors.grey[800],
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth(context) * 0.03,
                                  ),
                                  Container(
                                    width: 150,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Exercises',
                                        labelStyle: const TextStyle(
                                            color: Colors.white),
                                        filled: true,
                                        fillColor: Colors.grey[800],
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
