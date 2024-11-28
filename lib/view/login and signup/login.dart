import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gym/view/home%20and%20intro/home_page.dart';
import 'package:gym/view/login%20and%20signup/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 400,
                width: double.infinity,
                child: Image.asset(
                  "assets/login.jpg",
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
                child: Column(
                  children: [
                    const SizedBox(height: 150),
                    const Text(
                      "Login",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 255, 213),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: const TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.grey[800],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(height: 20),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: const TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Colors.grey[800],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don't Have Account",
                                style: TextStyle(color: Colors.white),
                              ),
                              const SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                  Get.to(Signup());
                                },
                                child: const Text(
                                  "Signup",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 255, 213),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {
                              Get.to(Home_page());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 255, 213),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 50,
                                vertical: 15,
                              ),
                              textStyle: const TextStyle(fontSize: 18),
                            ),
                            child: const Text(
                              'Submit',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
