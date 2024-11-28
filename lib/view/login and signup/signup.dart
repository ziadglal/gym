import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gym/view/home%20and%20intro/home_page.dart';
import 'package:gym/view/login%20and%20signup/login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/login.jpg',
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Signup",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 50),
                  _buildTextField("Name", context),
                  const SizedBox(height: 20),
                  _buildTextField("Email", context),
                  const SizedBox(height: 20),
                  _buildTextField("Phone Number", context),
                  const SizedBox(height: 20),
                  _buildTextField("Password", context, obscureText: true),
                  const SizedBox(height: 20),
                  _buildTextField("Confirm Password", context,
                      obscureText: true),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Do You Have Account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Get.to(const Login());
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 255, 213),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(Home_page());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 255, 213),
                      ),
                      child: const Text(
                        "submit",
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildTextField(String labelText, BuildContext context,
    {bool obscureText = false}) {
  return SizedBox(
    width: 450,
    child: TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.grey[800],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      style: const TextStyle(color: Colors.white),
    ),
  );
}
